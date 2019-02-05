from dbd import sqliteQueries
from dbd.dbd2ram import DBDownloader
from xdb.ram2xdb import Converter

# DOWNLOADING DATA FROM DBD TO XML

db_path="ResultAndResource/resultXml2Dbd.db"
xml_path="ResultAndResource/resultDbd2Xml.xml"
#   downloading schemas from sqlite database
loader = DBDownloader(sqliteQueries, db_path)
schemas = loader.load()

#   converting from ram representation to xml file
converter = Converter()
converter.convertRam2Xdb(schemas[1],xml_path)

print("file "+xml_path+" was created")

