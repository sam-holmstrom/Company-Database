import mysql.connector 
from mysql.connector import Error
from tabulate import tabulate  # optional, for better formatting

import datetime

connection = mysql.connector.connect(
    host='localhost',
    database='Local instance MySQL80',
    user='root',
    password='password'    
    )
cursor = connection.cursor()

query = "SELECT * FROM performers;"
cursor.execute(query)
results = cursor.fetchall()
table = tabulate(results, headers=cursor.column_names)
print("Report 1")
print("Today's Date:", datetime.date.today())
print("Performer Information")
print(table)

cursor.close()
connection.close()