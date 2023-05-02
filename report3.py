import mysql.connector
import datetime

state = input("Enter a 2-letter state abbreviation: ")

connection = mysql.connector.connect(
    host='localhost',
    database='Local instance MySQL80',
    user='root',
    password='password'    
    )

query = "SELECT * FROM client_table WHERE state = %s"
cursor = connection.cursor()
cursor.execute(query, (state,))
results = cursor.fetchall()

print("Report 3")
print("Today's Date:", datetime.date.today())
print("Search for client info by state:")

if len(results) > 0:
    print("Clients in", state, ":")
    for result in results:
        print(result)
else:
    print("No clients found in", state)

cursor.close()
connection.close()