
import sqlite3

conn = sqlite3.connect('users-sqlite.db')

cur = conn.cursor()

cur.execute('''CREATE TABLE IF NOT EXISTS Users
        (u_id INTEGER PRIMARY KEY AUTOINCREMENT, first TEXT, last TEXT, email TEXT)''')

uebki = [
        ('Pidor', 'govno', 'asdf@asdf.com'),
        ('Pidor', 'govno', 'asdf@asdf.com'),
        ('SUAKA', 'GOVNINA', 'asdfasdfasdf@asdasdfasdf.com'),
        ]

# cur.executemany('''INSERT INTO Users(first, last, email) VALUES (?,?,?)''', uebki)

cur.execute("SELECT email FROM Users")
print(cur.fetchall())

cur.execute("SELECT * FROM Users")
# print(cur.fetchall())


conn.commit()
conn.close()
