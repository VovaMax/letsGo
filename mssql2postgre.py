from mssql import MSSqlQueries
from dbd import sqliteQueries as sql
from xdb.ram2xdb import Converter
from mssql.mssql2ram import MSSQLDownloader
from postgreSql.ram2postgre import DdlPostgre
from source.writer import Writer

db_name = 'resultNorthwind'
ddl_path = 'ResultAndResource/resultMSSql2postgreSQL.ddl'
db_path = 'ResultAndResource/resultMSSQL2xbd.xml'
downloader = MSSQLDownloader(MSSqlQueries)
print("downloading db from NORTHWIND")
schema = downloader.load('dbo')
converter = Converter()
converter.convertRam2Xdb(schema,db_path)
print("database "+db_path+" was created")

DdlPostgre(schema,ddl_path)
print("file "+ddl_path+" was created")
#ddl_generator = DBInitialisator()
#ddl = ddl_generator.generate_ddl(schema)
#Writer.write(ddl_path + schema.name + ".ddl", '\n'.join(ddl))
#print("ddl saved to {}".format(ddl_path + schema.name + ".ddl"))

'''pg_init = DBInitialisator()

conn = postgresql.open(pg_url)
conn.execute(pg_init.drop_database(db_name))
print("creating database {}".format(db_name))
conn.execute(pg_init.create_database_ddl(db_name))
conn.close()
print("connecting to database {}".format(db_name))
conn = postgresql.open(pg_url + '/' + db_name.lower())


conn.execute('\n '.join(ddl))

data_transfer = DataTransfering(db_name, mssql_url, pg_url + '/' + db_name.lower())

schemas = {}
schemas[0] = schema
print("start data transferring")
data_transfer.start(schemas)
'''