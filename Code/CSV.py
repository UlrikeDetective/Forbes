import csv

# Input and output CSV files
input_file = 'Forbes/forbes_csv/forbes_2024_01.csv'
output_file = 'Forbes/forbes_csv/forbes_2024_01n.csv'

with open(input_file, 'r', encoding='utf-8') as infile, open(output_file, 'w', encoding='utf-8', newline='') as outfile:
    reader = csv.reader(infile, delimiter=';')
    writer = csv.writer(outfile, delimiter=';')
    
    for row in reader:
        # Ensure the row has at least 5 columns before replacing the value
        if len(row) > 4:
            # Replace commas with periods in the appropriate column (e.g., 4th column for net worth)
            row[4] = row[4].replace(',', '.')
        writer.writerow(row)
