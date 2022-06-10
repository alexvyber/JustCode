import sqlalchemy as db

engine = db.create_engine('sqlite:///movies.db')

connection = engine.connect()

meta = db.MetaData()
movies = db.Table('Movies', meta, autoload=True, autoload_with=engine)

query = db.select([movies])

result_proxy = connection.execute(query)
result_set = result_proxy.fetchall()

# print(result_set[0])
# print(result_set[:2])

shit = db.select([movies]).where(movies.columns.Director == "aaffaf")

r_proxy = connection.execute(shit)
r_set = r_proxy.fetchall()

print(r_set[0])

cunt = movies.insert().values(Title="PIDRILA", Director="ZALUPA KONYA", Year=1999)
connection.execute(cunt)


r_pro = connection.execute(db.select([movies]))
set = r_pro.fetchall()  

print(set)
