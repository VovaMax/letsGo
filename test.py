import unittest
from codecs import open as open
from xdb.ram2xdb import Converter
from xdb.xdb2ram import Parser

from dbd import sqliteQueries
from dbd.dbd2ram import DBDownloader
from dbd.ram2dbd import ram2sqlite

#test_result_path="ReaultAndResource/result"
#resourses_path = "ReaultAndResource/tasks.xml"

class ParsingTest(unittest.TestCase):
    def test_parsing(self):

        """
            testing parsing xml -> ram -> xml
        """
        filename = "ResultAndResource/tasks.xml"
        resource = filename
        result = "ResultAndResource/result.xml"

        # creating new schema in ram
        schema = Parser(resource).parseXdb2Ram()

        # create xml file from schema and writing result to file
        Converter().convertRam2Xdb(schema,result)

        print("test_parsing result:")

        # comparing origin and result files
        diffs = self.compare(resource, result)

        # if diffs is empty then files are equal
        equal = True if diffs == "" else False

        if diffs == "":
            print("Diffs not found. Files are equal.")

        self.assertTrue(equal, msg=diffs)


    def test_downloading(self):
        """
                testing xml->ram->dbd->ram->xml
        """
        filename = "ResultAndResource/prjadm.xdb.xml"
        dbname = "ResultAndResource/result.prjadm.db"

        resource = filename
        result_db = dbname

        #   Parsing xml to ram
        schema = Parser(resource).parseXdb2Ram()

        #   Upload schema to sqlite database
        ram2sqlite(sqliteQueries, result_db).upload(schema)

        #   Download schemas from sqlite database
        schemas = DBDownloader(sqliteQueries, result_db).load()
        #   Get first schema
        Converter().convertRam2Xdb(schemas[1],result_db)

        print("test_downloading result:")

        diffs = self.compare(resource, result_db)
        #   if diffs is empty then files are equal
        equal = True if diffs == "" else False

        if diffs == "":
            print("Diffs not found. Files are equal.")

        self.assertTrue(equal, msg=diffs)

    @staticmethod
    def compare(path1, path2):
        """
        Find diffs between 2 files
        :param path1: file1 path
        :param path2: file2 path
        :return: diffs - lines where the files differ
        """
        diffs = ""
        with open(path1, 'r', 'utf8') as source_file, \
                open(path2, 'r', 'utf8') as result_file:

            i = 0
            for source_line in source_file:
                i += 1
                result_line = result_file.readline()
                if i == 1:
                    continue
                if source_line.split() != result_line.split():
                    diffs += '\norigin line {} : {} \nnew line {} : {}'.format(i, source_line, i, result_line)



            source_file.close()
            result_file.close()
            return diffs

if __name__ == "__main__":         #попытка проверки промежуточных результатов
    ParsingTest().test_parsing()
    ParsingTest().test_downloading()