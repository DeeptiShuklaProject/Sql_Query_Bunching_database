# Sql_Query_Bunching_database
# PostgreSQL to CSV Exporter

This project exports data from PostgreSQL tables into CSV files.

git clone https://github.com/DeeptiShuklaProject/Sql_Query_Bunching_database.git

## Dependencies

pip install psycopg2-binary

## How to Use

1. Set up your PostgreSQL database and create the necessary tables by running create_tables.sql.
2. Insert sample data into the tables by running insert_data.sql.
3. Modify the database connection parameters in export_to_csv.py with your own database credentials.
4. Run the script to export the data to CSV files:

python export_to_csv.py