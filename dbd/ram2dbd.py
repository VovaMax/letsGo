import errno            #Этот модуль делает доступными стандартные errno системные символы
import os               #функции для работы с операционной системой
import sqlite3          #встроенная библиотека для работы с sql
import uuid             #библиотека для генерации id
from dbd.SQLite_ddl_init import SQL_DBD_Init

class ram2sqlite:

    def __init__(self, queries, db_file_name):
        self.config = queries                               #запоминаем запросы
        self._drop_if_exists(db_file_name)                  #удаление если существует
        self.conn = sqlite3.connect(db_file_name)           #создаем bd в файле
        self.cursor = self.conn.cursor()                    #cursor позволяет нам взаимодействовать с bd

    def __exit__(self):
        self.conn.close()                                   #закрываем соединение (файл) с бд

    def init_dbd(self):                                     #создаём пустую бд sqlite
        self.cursor.executescript(SQL_DBD_Init)

    def create_tmb_dbd(self):
        """
        Create temp table which will contain relationship
        of domain table and datatype table
        :return:
        """
        query = self.config.temp_rel_domain_datatype
        self.cursor.execute(query)

    def add_schema(self, schema):       #создаём новую схему в бд
        query = self.config.insert_schema

        self.cursor.execute(query, {
            "name": schema.name,
            "fulltext_engine": schema.fulltext_engine,
            "version": schema.version,
            "description": schema.descr
        })

    def get_result(self):
        """
        Get result executing query
        :return:
        """
        columns = [column[0] for column in self.cursor.description]
        results = []
        for row in self.cursor.fetchall():
            results.append(dict(zip(columns, row)))
        return results

    @staticmethod
    def _drop_if_exists(file_name: str):            #удаление файла бд если существует
        try:
            os.remove(file_name)
        except OSError as e:
            if e.errno != errno.ENOENT:
                raise

    def get_schema_id(self, schema):
        query = self.config.get_schema_id
        self.cursor.execute(query, {
            "name": schema.name
        })
        result = self.get_result()

        schema_id = result[0]["id"]
        return schema_id

    def get_id(self,query):
        """
        Get all ids
        :param self:
        :return: map{name:id}
        """
        self.cursor.execute(query)
        result_map = {}
        for result_obj in self.get_result():
            result_map[result_obj["name"]] = result_obj["id"]
        return result_map

    def add_domains(self, schema):
        """
        Add domains to database from Schema
        :param schema: Schema
        :return:
        """
        query = self.config.insert_domain
        for domain in schema.domains:
            self.cursor.execute(query, {
                'name': domain.name,
                'description': domain.descr,
                'length': domain.length,
                'char_length': domain.char_length,
                'precision': domain.precision,
                'scale': domain.scale,
                'width': domain.width,
                'align': domain.align,
                'show_null': domain.show_null,
                'show_lead_nulls': domain.show_lead_nulls,
                'thousands_separator': domain.thousands_separator,
                'summable': domain.summable,
                'case_sensitive': domain.case_sensitive,
                'data_type_id': domain.type,
                'uuid': uuid.uuid1().hex
            })

    def add_table(self, table, schema_id):
        """
        Add table to database from Table
        :param table:
        :param schema:
        :param schema_id:
        :return:
        """
        query = self.config.insert_table
        self.cursor.execute(query, {
            'schema_id': schema_id,
            'name': table.name,
            'description': table.descr,
            'can_add': table.add,
            'can_edit': table.edit,
            'can_delete': table.delete,
            'temporal_mode': table.temporal_mode,
            'means': table.means,
            'uuid': uuid.uuid1().hex
        })
        table_id = self.cursor.lastrowid
        return table_id

    def add_field(self, table_id, field, field_position, domain_id):
        """
        Add fields to database from Table
        :param table_id:
        :param field:
        :param field_position:
        :param domain_id:
        :return:
        """

        query = self.config.insert_field
        self.cursor.execute(query, {
            'table_id': table_id,
            'position': field_position,
            'name': field.name,
            'russian_short_name': field.rname if field.rname is not None else "",
            'description': field.descr,
            'domain_id': domain_id,
            'can_input': field.input,
            'can_edit': field.edit,
            'show_in_grid': field.show_in_grid,
            'show_in_details': field.show_in_details,
            'is_mean': field.is_mean,
            'autocalculated': field.autocalculated,
            'required': field.required,
            'uuid': uuid.uuid1().hex

        })
        field_id = self.cursor.lastrowid
        return field_id

    def add_constraint(self, table_id, constraint):
        """
        Upload constraint
        :param table_id:
        :param table_name:
        :param constraint:
        :return:
        """
        query = self.config.insert_constraint
        ref = constraint.reference

        self.cursor.execute(query, {
            'id': id(constraint),
            'table_id': table_id,
            'name': constraint.name,
            'constraint_type': constraint.kind,
            'unique_key_id': 1, #will update by "update_unique_key" script
            'reference': ref,
            'has_value_edit': constraint.has_value_edit,
            'cascading_delete': constraint.cascading_delete,
            'expression': constraint.expression,
            'uuid': uuid.uuid1().hex
        })
        constraint_id = self.cursor.lastrowid
        if ref is not None:
            query = self.config.tmp_const_table
            self.cursor.execute(query, {
                "constraint_id": constraint_id,
                "table_name": ref
            })

        #   updating unique key for constraints
        query = self.config.update_unique_key
        self.cursor.execute(query, {
            'id': constraint_id
        })
        return constraint_id

    def add_constraint_detail(self, detail, constraint,constraint_id, field_id):
        """
        Upload constraint detail
        :param detail:
        :param constraint:
        :param constraint_id:
        :param field_id:
        :return:
        """
        query = self.config.insert_constraint_detail
        self.cursor.execute(query, {
            'constraint_id': constraint_id,
            'position': constraint.details.index(detail),
            'field_id': field_id
        })

    def add_index(self, table_id,  index):
        """
        Upload index
        :param table_id:
        :param index:
        :return:
        """
        query = self.config.insert_index
        self.cursor.execute(query, {
            'id': id(index),
            'table_id': table_id,
            'name': index.name,
            'local': index.local,
            'kind': index.kind,
            'uuid': uuid.uuid1().hex
        })
        index_id = self.cursor.lastrowid
        return index_id

    def add_index_detail(self, detail, index, index_id, field_id):
        """
        Upload index details
        :param detail:
        :param index:
        :param index_id:
        :param field_id:
        :return:
        """
        query = self.config.insert_index_detail
        self.cursor.execute(query, {
            'index_id': index_id,
            'position': index.details.index(detail),
            'field_id': field_id,
            'expression': detail.expression,
            'descend': detail.descend
        })

    def add_tmp_table(self):
        query = self.config.temp_rel_constraint_table
        self.cursor.execute(query)

    def update_rel_constraints(self):
        query = self.config.update_rel_constraints_table
        self.cursor.execute(query)

    def drop_rel_constraints(self):
        query = self.config.drop_rel_constraints_table
        self.cursor.execute(query)

    def upload(self, schema):   #загружаем схему из RAM в SQLite
        self.init_dbd()         #создаём пустую бд по запросам из SQLite_ddl_init
        self.add_schema(schema) #добавляем схему в бд
        schema_id = self.get_schema_id(schema)

        self.add_domains(schema)

        domains_ids = self.get_id(self.config.get_domains_id)
        self.add_tmp_table()

        for table in schema.tables:
            table_id = self.add_table(table, schema_id)
            for field in table.fields:
                field_position = list(table.fields).index(field)
                domain_name = domains_ids[field.domain]
                self.add_field(table_id, field, field_position, domain_name)
            fields_ids = self.get_id(self.config.get_fields_id)
            for constraint in table.constraints:
                constraint_id = self.add_constraint(table_id, constraint)
                for detail in constraint.details:
                    field_id = fields_ids[detail.value]
                    self.add_constraint_detail(detail, constraint, constraint_id, field_id)
            for index in table.indexes:
                index_id = self.add_index(table_id, index)
                for detail in index.details:
                    field_id = fields_ids[detail.value]
                    self.add_index_detail(detail, index, index_id, field_id)
        self.update_rel_constraints()
        self.drop_rel_constraints()
        self.conn.commit()