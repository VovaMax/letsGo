from dbd import sqliteQueries as sql
from dbd.ram2dbd import ram2sqlite
from xdb.xdb2ram import Parser
db_path = "ResultAndResource/resultXml2Dbd.db"
metadata_path="ResultAndResource/tasks.xml"
parser = Parser(metadata_path)      #применяем xdb2ram
schema = parser.parseXdb2Ram()      #вызываем метод класса для конвертирования xml в ram

uploader = ram2sqlite(sql, db_path) #вызываем конструктор класса ram2sqlite
uploader.upload(schema)             #вызываем метод

print("database "+db_path+" was created")