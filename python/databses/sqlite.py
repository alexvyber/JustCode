
import sqlite3

connection = sqlite3.connect('movies.db')

cursor = connection.cursor()

cursor.execute('''CREATE TABLE IF NOT EXISTS Movies
        (Title TEXT, Director TEXT, Year INT)''')

shit = [
        ("asdf", "asdfadsf", 111),
        ("aaaa", "aaffaf", 100)]
# cursor.execute("INSERT INTO Movies VALUES ('Shmonka', 'Pidoraas', 1999)")

# cursor.executemany('Insert INTO Movies VALUES (?,?,?)', shit)

# results = cursor.execute("SELECT * FROM Movies")

# print(cursor.fetchall())

# for s in results:
    # print(s)


num_shit = (111,)

cursor.execute("SELECT * FROM Movies WHERE year=?", num_shit) 

print(cursor.fetchall())

connection.commit()
connection.close()
