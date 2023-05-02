import mysql.connector
from mysql.connector import Error
from tabulate import tabulate 

import datetime

try:
    connection = mysql.connector.connect(
        host='localhost',
        database='Local instance MySQL80',
        user='root',
        password='password'
    )

    cursor = connection.cursor()
    query = """
        SELECT * 
        FROM event_staffing 
        JOIN event_table ON event_staffing.event_ID = event_table.e_ID;
    """
    cursor.execute(query)
    results = cursor.fetchall()
    table = tabulate(results, headers=cursor.column_names)

    print("Report 1")
    print("Today's Date:", datetime.date.today())
    print("Performer Information")
    print(table)

except Error as e:
    print(f"Error accessing MySQL database: {e}")

finally:
    # close the connection and cursor
    cursor.close()
    connection.close()