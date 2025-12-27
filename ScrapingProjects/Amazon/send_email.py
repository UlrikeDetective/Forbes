import smtplib
import sqlite3
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from datetime import datetime

# SMTP configuration (use your own email credentials here)
SMTP_SERVER = "smtp.gmail.com"
SMTP_PORT = 587
SENDER_EMAIL = "your-email@gmail.com"
SENDER_PASSWORD = "your-email-password"
RECIPIENT_EMAIL = "recipient-email@example.com"  # The recipient of your email

# Function to retrieve TV price data from the database
def get_tv_price_data():
    conn = sqlite3.connect('tv_prices.db')
    c = conn.cursor()
    c.execute("SELECT date, title, price FROM prices ORDER BY date DESC LIMIT 10")
    rows = c.fetchall()
    conn.close()
    return rows

# Function to create an HTML email with the TV price data
def create_html_email(tv_data):
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    html = f"""
    <html>
    <body>
        <h2>Top 10 Amazon TV Prices - {now}</h2>
        <table border="1" cellpadding="5" cellspacing="0">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>TV</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
    """
    
    for row in tv_data:
        html += f"""
        <tr>
            <td>{row[0]}</td>
            <td>{row[1]}</td>
            <td>{row[2]}</td>
        </tr>
        """
    
    html += """
            </tbody>
        </table>
    </body>
    </html>
    """
    
    return html

# Function to send an HTML email
def send_email(html_content):
    # Create a MIME multipart message
    msg = MIMEMultipart("alternative")
    msg["Subject"] = "Top 10 Amazon TV Prices"
    msg["From"] = SENDER_EMAIL
    msg["To"] = RECIPIENT_EMAIL

    # Attach the HTML content to the email
    html_part = MIMEText(html_content, "html")
    msg.attach(html_part)

    # Connect to the SMTP server and send the email
    with smtplib.SMTP(SMTP_SERVER, SMTP_PORT) as server:
        server.starttls()  # Upgrade connection to secure
        server.login(SENDER_EMAIL, SENDER_PASSWORD)
        server.sendmail(SENDER_EMAIL, RECIPIENT_EMAIL, msg.as_string())

    print("Email sent successfully!")

# Main function to run the process
if __name__ == "__main__":
    # Get the TV price data
    tv_price_data = get_tv_price_data()

    if tv_price_data:
        # Create the HTML content
        html_email = create_html_email(tv_price_data)
        
        # Send the email
        send_email(html_email)