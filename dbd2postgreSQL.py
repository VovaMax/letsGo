from dbd import sqliteQueries
from dbd.dbd2ram import DBDownloader
from postgreSql.ram2postgre import DdlPostgre

# DOWNLOADING DATA FROM DBD TO XML

db_path="ResultAndResource/resultXml2Dbd.db"
ddl_file = "ResultAndResource/PostgreDDL.ddl"  # файл для сохранения ddl
#   downloading schemas from sqlite database
loader = DBDownloader(sqliteQueries, db_path)
schemas = loader.load()
DdlPostgre(schemas[1],ddl_file)

print("file "+ddl_file+" was created")