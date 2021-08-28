import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="venueBooking"
)

mycursor = mydb.cursor()
i= "SELECT * FROM admin"
mycursor.execute(i)
j = mycursor.fetchall()
for t in j:
  print(t)
print("---------------------")
q="SELECT * FROM venue"
mycursor.execute(q)
r=mycursor.fetchall()
for i in r:
  print(i)
print("---------------------")
s = "SELECT * FROM user"
mycursor.execute(s)
T= mycursor.fetchall()
for t in T:
  print(t)
print("---------------------")
a = "SELECT * FROM payment"
mycursor.execute(a)
b = mycursor.fetchall()
for t in b:
  print(t)
print("---------------------")
c = "SELECT * FROM books"
mycursor.execute(a)
d= mycursor.fetchall()
for i in d:
  print(i)
print("---------------------")
e = "SELECT * FROM manages"
mycursor.execute(e)
f = mycursor.fetchall()
for t in f:
  print(t)
print("---------------------")
g= "SELECT * FROM pays"
mycursor.execute(g)
h = mycursor.fetchall()
for t in h:
  print(t)
print("---------------------")
g= "SELECT * FROM takes"
mycursor.execute(g)
h = mycursor.fetchall()
for t in h:
  print(t)
print("---------------------")

print("the connection is successful!")