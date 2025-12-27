import requests
from bs4 import BeautifulSoup
import sqlite3
from datetime import datetime

# URL for the Amazon Best-Selling TVs
url = "https://www.amazon.com/Best-Sellers-Televisions/zgbs/electronics/172659"
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}

def get_tv_prices():
    response = requests.get(url, headers=headers)

    if response.status_code != 200:
        print(f"Failed to retrieve the page. Status code: {response.status_code}")
        return None

    soup = BeautifulSoup(response.content, 'lxml')
    tvs = []

    # Find the top 10 TVs in the Best Sellers list
    tv_list = soup.find_all('div', class_='zg-grid-general-faceout', limit=10)

    if not tv_list:
        print("No TVs found on the page.")
        return None

    for tv in tv_list:
        title_tag = tv.find('div', class_='p13n-sc-truncated')
        price_tag = tv.find('span', class_='p13n-sc-price')

        if title_tag and price_tag:
            title = title_tag.get_text(strip=True)
            price = price_tag.get_text().strip()
            tvs.append((title, price))

    return tvs

def store_prices_in_db(tv_data):
    conn = sqlite3.connect('tv_prices.db')
    c = conn.cursor()

    # Create the table if it doesn't exist
    c.execute('''CREATE TABLE IF NOT EXISTS prices
                 (date TEXT, title TEXT, price TEXT)''')

    # Insert the TV price data along with the current date
    date_now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    for tv in tv_data:
        c.execute("INSERT INTO prices (date, title, price) VALUES (?, ?, ?)", (date_now, tv[0], tv[1]))

    conn.commit()
    conn.close()

def view_price_trends():
    conn = sqlite3.connect('tv_prices.db')
    c = conn.cursor()

    # Check if the table exists
    c.execute("SELECT name FROM sqlite_master WHERE type='table' AND name='prices';")
    if not c.fetchone():
        print("The 'prices' table does not exist. Please make sure to store data first.")
        conn.close()
        return

    c.execute("SELECT * FROM prices ORDER BY date ASC")
    rows = c.fetchall()

    if not rows:
        print("No price trends found in the database.")
        conn.close()
        return

    for row in rows:
        print(f"Date: {row[0]}, TV: {row[1]}, Price: {row[2]}")

    conn.close()

if __name__ == "__main__":
    tv_prices = get_tv_prices()

    if tv_prices:
        store_prices_in_db(tv_prices)
        print(f"Stored prices for {len(tv_prices)} TVs in the database.")
    else:
        print("No TV prices were scraped.")

    # Call view_price_trends after ensuring data is stored
    view_price_trends()
