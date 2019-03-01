import psycopg2
from psycopg2 import sql
from postgreSql.postgreSql_InitDomain import type_


class DdlPostgre:
    constraint_number = 0
    index_number = 0
    host = "localhost"
    port = "5432"
    database = "first"
    login = "postgres"
    password = "19970207"
    defer = ""         # проверки ограничений откладываются до фиксации транзакции  DEFERRABLE INITIALLY DEFERRED

    def __init__(self, schema,file):
        try:
            self.conn = psycopg2.connect(host=DdlPostgre.host,
                                         port=DdlPostgre.port,
                                         database=DdlPostgre.database,
                                         user=DdlPostgre.login,
                                         password=DdlPostgre.password)
            self.cursor = self.conn.cursor()
        except (Exception) as error:
            print("Ошибка подключения к PostgreSQL", error)
            exit(1)

        self.schema = schema
        self.text = ""
        self.schema_text = ""
        self.domain_text = ""
        self.table_text = ""
        self.index_text = ""
        self.primary_text = ""
        self.foreign_text = ""
        self.file=file
        self.cursor.execute("""BEGIN TRANSACTION""")
        self._create_schemas()
        self._create_domains()
        self._create_tables()
        self._create_indexes()
        self._create_constraints()
        self._create_constraints_foreign()
        self.text = self.schema_text \
                    + self.domain_text \
                    + self.table_text \
                    + self.index_text \
                    + self.primary_text \
                    + self.foreign_text

        self._write_to_file()

        self.cursor.execute(self.schema_text)
        self.cursor.execute(self.domain_text)
        self.cursor.execute(self.table_text)
        self.cursor.execute(self.index_text)
        self.cursor.execute(self.primary_text)
        self.cursor.execute(self.foreign_text)
        self.conn.commit()
        self.conn.close()


    def _write_to_file(self):                   # Запись текста в ddl-файл
        with open(self.file, 'w', encoding='utf-8') as f:
            f.write(self.text)


    def _create_schemas(self):                  # Создание схемы
        EXISTS_SCHEMA = """
            SELECT schema_name
            FROM information_schema.schemata
            WHERE schema_name = '{0}'            
        """
        self.cursor.execute(sql.SQL(EXISTS_SCHEMA.format(self.schema.name.lower())))
        create = 'CREATE SCHEMA "{0}" AUTHORIZATION {1};\n'
        self.schema_text += create.format(self.schema.name, DdlPostgre.login)
        if self.schema.descr:
            description = 'COMMENT ON SCHEMA "{0}" is '.format(self.schema.name)
            description += "'{0}';\n\n".format(self.schema.descr)
            self.schema_text += description


    def _create_domains(self):                      # Создание доменов
        for domain in self.schema.domains.values():
            if ((domain.name==None)or(domain.name=="")):
                continue
            query = ""
            create = 'CREATE DOMAIN "{3}".{0} {1}{2};\n'
            name = '"{0}"'.format(domain.name)
            type = type_[domain.type.upper()]
            length = domain.char_length
            precision = domain.precision
            scale = domain.scale
            length = '({0})'.format(str(length)) if length else ""
            precision = '({0}'.format(str(precision)) if precision else ""
            scale = ',{0})'.format(str(scale)) if scale else ")"
            if not precision:
                scale = ""
            print(type)
            if type == 'NUMERIC':
                type = create.format(name, type, precision + scale, self.schema.name)
            elif type == 'CHAR' or type == 'VARCHAR':
                type = create.format(name, type, length, self.schema.name)
            else:
                type = create.format(name, type, "", self.schema.name)

            self.domain_text += type
        self.domain_text += "\n"

        for domain in self.schema.domains.values():
            description = domain.descr
            if description:
                description = comment("DOMAIN", domain.name, self.schema.name, description)
            else:
                description = ""
            self.domain_text += description

        self.domain_text += "\n"


    def _create_tables(self):                   # Создание таблиц
        for table in self.schema.tables:
            create = 'CREATE TABLE "{0}"."{1}" (\n\t'.format(self.schema.name, table.name)
            fields = self._create_fields(table.fields)
            fields = fields[0:len(fields)-3]
            self.table_text += create + fields + "\n);\n\n"

            for field in table.fields:
                description = field.descr
                name = '{0}"."{1}'.format(table.name, field.name)
                if description:
                    description = comment("COLUMN", name, self.schema.name, description)
                else:
                    description = ""
                self.table_text += description

    def _create_indexes(self):                  # Создание индексов
        for table in self.schema.tables:
            indexes = ""
            for index in table.indexes:
                create = 'CREATE{0}INDEX ON "{1}"."{2}" ({3});\n'
                if index.kind=="uniqueness":
                    uniq = " UNIQUE "
                else:
                    uniq=" "
                field = '"{0}"'.format(index.details[0].value)
                self.index_text += create.format(uniq,
                                           self.schema.name,
                                           table.name,
                                           field)
        self.index_text += "\n\n"

    # Создание полей
    def _create_fields(self, table):
        fields = ""
        for field in table:
            tabs = ""
            name = '"{0}"\t'.format(field.name)

            # Выравниваем поля
            for i in range(8, 17, 3):
                if len(name) + 2 < i: tabs += "\t"

            # Если неименованный домен

            if field.domain is not None:
                if type(field.domain) is str:
                    typ = '"{0}",\n\t'.format(field.domain)
                    typ = '"{0}".'.format(self.schema.name) + typ
                    fields += name + tabs + typ
                else:
                    typ = type_[field.domain.type.upper()]     # Конвертируем исходный тип в тип PostgreSql поиском в списке по кдючу
                    length = field.domain.char_length
                    precision = field.domain.precision
                    scale = field.domain.scale
                    length = '({0})'.format(str(length)) if length else ""
                    precision = '({0}'.format(str(precision)) if precision else ""
                    scale = ',{0})'.format(str(scale)) if scale else ")"
                    if not precision:
                        scale = ""
                    if typ == "DECIMAL":
                        typ = '{0}{1}{2},\n\t'.format(typ, precision, scale)
                    elif typ == 'CHAR' or typ == 'VARCHAR':
                        typ = '{0}{1},\n\t'.format(typ, length)
                    else:
                        typ ='{0},\n\t'.format(typ)
                    fields += name + tabs + typ+length+precision+scale
        return fields

    def _create_constraints(self):
        for table in self.schema.tables:
            prim = []
            query = 'ALTER TABLE "{0}"."{1}" ADD PRIMARY KEY("{2}") {3};\n'
            constr=""
            for c in table.constraints:
                if c.kind.lower()=="primary":
                    prim.append(c.details[0].value)
            constr = query.format(self.schema.name,
                                    table.name,
                                    #name,
                                    '","'.join(prim)
                                    , DdlPostgre.defer
                                    )
            if prim.__len__()>=1:
                self.primary_text += constr
        self.primary_text+= "\n"

    '''
    f = ''
        for c in table.constraints:
            if c.kind.lower()=='foreign':
                f += """alter table {}."{}"  add {} ({}) references {}.\"{}\";\n""" \
                    .format(schema.name, table.name, "FOREIGN KEY", c.items, schema.name, c.reference)
        return f
    '''


    def _create_constraints_foreign(self):                          # Создание ограничений
        for table in self.schema.tables:
            for c in table.constraints:
                query = 'ALTER TABLE "{0}"."{1}" ' \
                        'ADD FOREIGN KEY("{2}")'
                foreign = []
                constr = ""
                if c.kind != "PRIMARY":
                    foreign.append(c.details[0].value)
                else:
                    continue

                query = query.format(self.schema.name, table.name, '","'.join(foreign))
                reference = c.reference
                ref_key = self._reference_key(reference)
                query += ' REFERENCES "{0}"."{1}"("{2}")'.format(self.schema.name,
                                                            reference,
                                                            ref_key)
                if self.true(c.cascading_delete) :
                    query += " ON DELETE CASCADE "
                self.foreign_text += query + DdlPostgre.defer + ";\n"


    def _reference_key(self, name):                     # Поиск первичного ключа для внешнего
        for table in self.schema.tables:
            if table.name == name:
                for constr in table.constraints:
                    if constr.kind == "PRIMARY":
                        return constr.details[0].value
                print("Таблица {0} не имеет первичного ключа!".format(name))
                exit(1)
        print("Таблица {0} не существует.".format(name))
        exit(1)

    def true(self, value):
        return True if value else False

def comment(type, name, schema_name, value):
    return "COMMENT ON {0} {1}.{2} is '{3}';\n".format(type, '"'+schema_name+'"', '"'+name+'"', value)

