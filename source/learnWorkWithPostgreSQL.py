import psycopg2

try:
    conn = psycopg2.connect("dbname='first' user='postgres'" \
                            " host='localhost' password='19970207'")
except psycopg2.Error as err:
    print("Connection error: {}".format(err))

sql = "SELECT * FROM users LIMIT 3"

try:
    cur = conn.cursor()
    # cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor) # by column name
    cur.execute(sql)
    data = cur.fetchall()
except psycopg2.Error as err:
    print("Query error: {}".format(err))
print(data)
print ("\nShow me the databases:\n")
for row in data:
    print ("   ", row)
sql2 = "insert into users values(3,'Misha',9)"
cur.execute(sql2)
sql3 = "commit"
cur.execute(sql3)