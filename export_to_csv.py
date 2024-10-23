
import psycopg2

# Database connection parameters
conn_params = {
    'dbname': 'bunching_data',    # Replace with your database name
    'user': 'nishant',      # Replace with your username
    'password': 'nishant',   # Replace with your password
    'host': 'localhost',          # Adjust if your database is on a different host
    'port': '5432'                # Default PostgreSQL port
}

# SQL queries to export to CSV
queries = {'Employee': "COPY (SELECT * FROM Employee) TO STDOUT WITH CSV HEADER",'Department': "COPY (SELECT * FROM Department) TO STDOUT WITH CSV HEADER",'Project': "COPY (SELECT * FROM Project) TO STDOUT WITH CSV HEADER"}
# File paths for CSV output
file_paths = {
    'Employee': r'D:\RDBMS\Sql_Query_Bunching_database\data\Employee.csv',
    'Department': r'D:\RDBMS\Sql_Query_Bunching_database\data\Department.csv',
    'Project': r'D:\RDBMS\Sql_Query_Bunching_database\data\Project.csv'
}

try:
    # Connect to PostgreSQL
    with psycopg2.connect(**conn_params) as conn:
        with conn.cursor() as cursor:
            for table, query in queries.items():
                with open(file_paths[table], 'w') as f:
                    cursor.copy_expert(query, f)
                    print(f"{table} data exported successfully to {file_paths[table]}")
except Exception as e:
    print(f"An error occurred: {e}")
