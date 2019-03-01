CREATE SCHEMA "TASKS" AUTHORIZATION postgres;
COMMENT ON SCHEMA "TASKS" is 'Описатель БД TASKS';

CREATE DOMAIN "TASKS"."BinData" BYTEA[];
CREATE DOMAIN "TASKS"."CODE" VARCHAR(15);
CREATE DOMAIN "TASKS"."ID пункта" INT8;
CREATE DOMAIN "TASKS"."ID статьи" INT8;
CREATE DOMAIN "TASKS"."IDC" INT;
CREATE DOMAIN "TASKS"."ID_descr" INT8;
CREATE DOMAIN "TASKS"."Layout_id" VARCHAR(200);
CREATE DOMAIN "TASKS"."N" INT8;
CREATE DOMAIN "TASKS"."N Исходящ" VARCHAR(20);
CREATE DOMAIN "TASKS"."N письма" VARCHAR(20);
CREATE DOMAIN "TASKS"."N счета" VARCHAR(6);
CREATE DOMAIN "TASKS"."N_Рексофт" VARCHAR(10);
CREATE DOMAIN "TASKS"."TextData" TEXT[];
CREATE DOMAIN "TASKS"."id_ACC" INT8;
CREATE DOMAIN "TASKS"."id_ACT" INT8;
CREATE DOMAIN "TASKS"."id_CNTR_V" INT8;
CREATE DOMAIN "TASKS"."id_CONTROL" INT8;
CREATE DOMAIN "TASKS"."id_CONT_C" INT8;
CREATE DOMAIN "TASKS"."id_CONT_T" INT8;
CREATE DOMAIN "TASKS"."id_DEPEND" INT8;
CREATE DOMAIN "TASKS"."id_DETAILS" INT8;
CREATE DOMAIN "TASKS"."id_GRTASKS" INT8;
CREATE DOMAIN "TASKS"."id_INST_C" INT8;
CREATE DOMAIN "TASKS"."id_LC_TEAC" INT8;
CREATE DOMAIN "TASKS"."id_OB_BAZ" INT8;
CREATE DOMAIN "TASKS"."id_PHOTOT" INT8;
CREATE DOMAIN "TASKS"."id_PRNCMDS" INT8;
CREATE DOMAIN "TASKS"."id_PROGRAM" INT8;
CREATE DOMAIN "TASKS"."id_PROJ_T" INT8;
CREATE DOMAIN "TASKS"."id_PR_TEAC" INT8;
CREATE DOMAIN "TASKS"."id_RIGHTS" INT8;
CREATE DOMAIN "TASKS"."id_TAB_RTS" INT8;
CREATE DOMAIN "TASKS"."id_TASKSCT" INT8;
CREATE DOMAIN "TASKS"."id_TAS_POS" INT8;
CREATE DOMAIN "TASKS"."id_TAS_TIM" INT8;
CREATE DOMAIN "TASKS"."mmFileExt" VARCHAR(45);
CREATE DOMAIN "TASKS"."mmFileName" VARCHAR(40);
CREATE DOMAIN "TASKS"."mmSubName" VARCHAR(8);
CREATE DOMAIN "TASKS"."АдресОрг." VARCHAR(128);
CREATE DOMAIN "TASKS"."Актуальна" BOOLEAN;
CREATE DOMAIN "TASKS"."БИК" VARCHAR(10);
CREATE DOMAIN "TASKS"."Банк" VARCHAR(50);
CREATE DOMAIN "TASKS"."БезОбъект." BOOLEAN;
CREATE DOMAIN "TASKS"."Ввод" BOOLEAN;
CREATE DOMAIN "TASKS"."Верс\Редак" VARCHAR(10);
CREATE DOMAIN "TASKS"."ВерсПрогр" VARCHAR(30);
CREATE DOMAIN "TASKS"."ВидПроблем" INT;
CREATE DOMAIN "TASKS"."Визуализ." BOOLEAN;
CREATE DOMAIN "TASKS"."ВремСтатус" TIME;
CREATE DOMAIN "TASKS"."Время" TIME;
CREATE DOMAIN "TASKS"."ВремяЗаявк" TIME;
CREATE DOMAIN "TASKS"."ВремяИзмен" TIME;
CREATE DOMAIN "TASKS"."ВремяНач" TIME;
CREATE DOMAIN "TASKS"."ВремяПост." TIME;
CREATE DOMAIN "TASKS"."ВремяСеанс" TIME;
CREATE DOMAIN "TASKS"."ВремяСозд" TIME;
CREATE DOMAIN "TASKS"."Выборки" BOOLEAN;
CREATE DOMAIN "TASKS"."Выдана" BOOLEAN;
CREATE DOMAIN "TASKS"."ВысокПриор" BOOLEAN;
CREATE DOMAIN "TASKS"."Гражд." BOOLEAN;
CREATE DOMAIN "TASKS"."Грамотн." VARCHAR(20);
CREATE DOMAIN "TASKS"."Дата" DATE;
CREATE DOMAIN "TASKS"."ДатаАктуал" DATE;
CREATE DOMAIN "TASKS"."ДатаВыдачи" DATE;
CREATE DOMAIN "TASKS"."ДатаВыпуск" DATE;
CREATE DOMAIN "TASKS"."ДатаЗаявки" DATE;
CREATE DOMAIN "TASKS"."ДатаИзмен." DATE;
CREATE DOMAIN "TASKS"."ДатаКонтак" DATE;
CREATE DOMAIN "TASKS"."ДатаКонца" DATE;
CREATE DOMAIN "TASKS"."ДатаНачал." DATE;
CREATE DOMAIN "TASKS"."ДатаОбъед." DATE;
CREATE DOMAIN "TASKS"."ДатаОплаты" DATE;
CREATE DOMAIN "TASKS"."ДатаОтправ" DATE;
CREATE DOMAIN "TASKS"."ДатаПост." DATE;
CREATE DOMAIN "TASKS"."ДатаСеанса" DATE;
CREATE DOMAIN "TASKS"."ДатаСтатус" DATE;
CREATE DOMAIN "TASKS"."ДатаУвольн" DATE;
CREATE DOMAIN "TASKS"."Длительн" INT;
CREATE DOMAIN "TASKS"."Должность" VARCHAR(50);
CREATE DOMAIN "TASKS"."Дом" VARCHAR(6);
CREATE DOMAIN "TASKS"."Заблокиров" BOOLEAN;
CREATE DOMAIN "TASKS"."Заметки" TEXT[];
CREATE DOMAIN "TASKS"."Затраты" NUMERIC(16,2);
CREATE DOMAIN "TASKS"."Зачтено" BOOLEAN;
CREATE DOMAIN "TASKS"."ЗначТекст" VARCHAR(250);
CREATE DOMAIN "TASKS"."ИНН" NUMERIC(16);
CREATE DOMAIN "TASKS"."Изм.Отчет" BOOLEAN;
CREATE DOMAIN "TASKS"."ИзменЛичн" BOOLEAN;
CREATE DOMAIN "TASKS"."Изменение" BOOLEAN;
CREATE DOMAIN "TASKS"."Имя" VARCHAR(30);
CREATE DOMAIN "TASKS"."Имя поля" VARCHAR(10);
CREATE DOMAIN "TASKS"."ИмяАдреса" VARCHAR(43);
CREATE DOMAIN "TASKS"."ИмяИсточн" VARCHAR(30);
CREATE DOMAIN "TASKS"."ИмяПольз." VARCHAR(35);
CREATE DOMAIN "TASKS"."ИмяПриемн" VARCHAR(30);
CREATE DOMAIN "TASKS"."ИмяСименс" VARCHAR(60);
CREATE DOMAIN "TASKS"."ИмяСтанции" VARCHAR(8);
CREATE DOMAIN "TASKS"."ИмяФайла" VARCHAR(30);
CREATE DOMAIN "TASKS"."ИмяЭлемент" VARCHAR(50);
CREATE DOMAIN "TASKS"."ИндексМеню" BYTEA;
CREATE DOMAIN "TASKS"."Категория" INT;
CREATE DOMAIN "TASKS"."Кв." VARCHAR(6);
CREATE DOMAIN "TASKS"."КлючНастр" VARCHAR(250);
CREATE DOMAIN "TASKS"."Код в КУПе" VARCHAR(4);
CREATE DOMAIN "TASKS"."КодАдреса" INT;
CREATE DOMAIN "TASKS"."КодВажн." INT;
CREATE DOMAIN "TASKS"."КодВедомст" BYTEA;
CREATE DOMAIN "TASKS"."КодВерсии" INT8;
CREATE DOMAIN "TASKS"."КодВидРаб" BYTEA;
CREATE DOMAIN "TASKS"."КодВх\Исх" BYTEA;
CREATE DOMAIN "TASKS"."КодГос-ва" INT;
CREATE DOMAIN "TASKS"."КодГруппы" INT8;
CREATE DOMAIN "TASKS"."КодДоговор" INT;
CREATE DOMAIN "TASKS"."КодДопЛиц" INT8;
CREATE DOMAIN "TASKS"."КодЖурнВх" INT8;
CREATE DOMAIN "TASKS"."КодЖурнИсх" INT8;
CREATE DOMAIN "TASKS"."КодЗадачи" INT8;
CREATE DOMAIN "TASKS"."КодИмЭлХр" INT8;
CREATE DOMAIN "TASKS"."КодИнстр" INT;
CREATE DOMAIN "TASKS"."КодИстории" INT8;
CREATE DOMAIN "TASKS"."КодКлиента" INT;
CREATE DOMAIN "TASKS"."КодКоманды" INT;
CREATE DOMAIN "TASKS"."КодКонтакт" INT8;
CREATE DOMAIN "TASKS"."КодЛиценз" INT8;
CREATE DOMAIN "TASKS"."КодМастера" INT8;
CREATE DOMAIN "TASKS"."КодМеню" TEXT;
CREATE DOMAIN "TASKS"."КодМенюОбс" INT8;
CREATE DOMAIN "TASKS"."КодМульти" INT;
CREATE DOMAIN "TASKS"."КодНасПунк" INT;
CREATE DOMAIN "TASKS"."КодОбласти" BYTEA;
CREATE DOMAIN "TASKS"."КодОбъедин" INT;
CREATE DOMAIN "TASKS"."КодОргМ1" INT8;
CREATE DOMAIN "TASKS"."КодОрганиз" INT8;
CREATE DOMAIN "TASKS"."КодОтдела" BYTEA;
CREATE DOMAIN "TASKS"."КодПарам" BYTEA;
CREATE DOMAIN "TASKS"."КодПередач" BYTEA;
CREATE DOMAIN "TASKS"."КодПисьмВх" INT8;
CREATE DOMAIN "TASKS"."КодПисьмИс" INT8;
CREATE DOMAIN "TASKS"."КодПлПор" INT8;
CREATE DOMAIN "TASKS"."КодПодразд" BYTEA;
CREATE DOMAIN "TASKS"."КодПольз." TEXT;
CREATE DOMAIN "TASKS"."КодПоступл" BYTEA;
CREATE DOMAIN "TASKS"."КодПринт" BYTEA;
CREATE DOMAIN "TASKS"."КодПриорит" BYTEA;
CREATE DOMAIN "TASKS"."КодПроблем" SMALLINT;
CREATE DOMAIN "TASKS"."КодПункта" TEXT;
CREATE DOMAIN "TASKS"."КодРабКонт" INT8;
CREATE DOMAIN "TASKS"."КодРайона" INT;
CREATE DOMAIN "TASKS"."КодРезульт" INT;
CREATE DOMAIN "TASKS"."КодРексофт" INT8;
CREATE DOMAIN "TASKS"."КодРешения" SMALLINT;
CREATE DOMAIN "TASKS"."КодСеанса" INT8;
CREATE DOMAIN "TASKS"."КодСотрудн" INT;
CREATE DOMAIN "TASKS"."КодСтанции" INT;
CREATE DOMAIN "TASKS"."КодСтатуса" BYTEA;
CREATE DOMAIN "TASKS"."КодТаблицы" INT;
CREATE DOMAIN "TASKS"."КодТексВх" INT8;
CREATE DOMAIN "TASKS"."КодТексЗад" INT8;
CREATE DOMAIN "TASKS"."КодТексЗая" INT8;
CREATE DOMAIN "TASKS"."КодТексИсх" INT8;
CREATE DOMAIN "TASKS"."КодТекста" INT8;
CREATE DOMAIN "TASKS"."КодТипРес" BYTEA;
CREATE DOMAIN "TASKS"."КодТипРеш" SMALLINT;
CREATE DOMAIN "TASKS"."КодТипа" BYTEA;
CREATE DOMAIN "TASKS"."КодТипаКон" TEXT;
CREATE DOMAIN "TASKS"."КодТочност" BYTEA;
CREATE DOMAIN "TASKS"."КодУдостов" INT8;
CREATE DOMAIN "TASKS"."КодХран" INT8;
CREATE DOMAIN "TASKS"."КодЦБДУИГ" VARCHAR(7);
CREATE DOMAIN "TASKS"."КодЭкспорт" INT8;
CREATE DOMAIN "TASKS"."КодЭлАдрОр" INT8;
CREATE DOMAIN "TASKS"."КодЭлАдрес" INT8;
CREATE DOMAIN "TASKS"."КолРайотд" BYTEA;
CREATE DOMAIN "TASKS"."КоличСтрок" INT8;
CREATE DOMAIN "TASKS"."КонтрКлюч" BOOLEAN;
CREATE DOMAIN "TASKS"."КонтрПарам" VARCHAR(30);
CREATE DOMAIN "TASKS"."Кор/счет" VARCHAR(20);
CREATE DOMAIN "TASKS"."Критичн-ть" VARCHAR(60);
CREATE DOMAIN "TASKS"."ЛинияСлуж." BYTEA;
CREATE DOMAIN "TASKS"."ЛичнПароль" VARCHAR(6);
CREATE DOMAIN "TASKS"."Логин" VARCHAR(21);
CREATE DOMAIN "TASKS"."Междуг.Код" VARCHAR(10);
CREATE DOMAIN "TASKS"."Мотивация" VARCHAR(100);
CREATE DOMAIN "TASKS"."НазвГИЦ" VARCHAR(30);
CREATE DOMAIN "TASKS"."НазвОбласт" VARCHAR(30);
CREATE DOMAIN "TASKS"."НазвОбъед." VARCHAR(30);
CREATE DOMAIN "TASKS"."НазвПодр." VARCHAR(60);
CREATE DOMAIN "TASKS"."НазвПолное" VARCHAR(50);
CREATE DOMAIN "TASKS"."НазвПоступ" VARCHAR(15);
CREATE DOMAIN "TASKS"."НазвПрогр." VARCHAR(20);
CREATE DOMAIN "TASKS"."НазвПункта" VARCHAR(140);
CREATE DOMAIN "TASKS"."НазвРайона" VARCHAR(30);
CREATE DOMAIN "TASKS"."НазвТипа" VARCHAR(30);
CREATE DOMAIN "TASKS"."Название" VARCHAR(100);
CREATE DOMAIN "TASKS"."Наименован" VARCHAR(30);
CREATE DOMAIN "TASKS"."НаселПункт" VARCHAR(30);
CREATE DOMAIN "TASKS"."НеАктуальн" BOOLEAN;
CREATE DOMAIN "TASKS"."НеВыбирать" BOOLEAN;
CREATE DOMAIN "TASKS"."НеПоказыв." BOOLEAN;
CREATE DOMAIN "TASKS"."НеПротокол" BOOLEAN;
CREATE DOMAIN "TASKS"."НомУдост." INT8;
CREATE DOMAIN "TASKS"."Номер" INT8;
CREATE DOMAIN "TASKS"."НомерДокум" VARCHAR(10);
CREATE DOMAIN "TASKS"."ОКОНХ" VARCHAR(5);
CREATE DOMAIN "TASKS"."ОКПО" VARCHAR(8);
CREATE DOMAIN "TASKS"."Объекты" BOOLEAN;
CREATE DOMAIN "TASKS"."ОбъемЧасов" BYTEA;
CREATE DOMAIN "TASKS"."Ограничен." BOOLEAN;
CREATE DOMAIN "TASKS"."ОкончЛицен" DATE;
CREATE DOMAIN "TASKS"."Описание" VARCHAR(240);
CREATE DOMAIN "TASKS"."ОрганФМС" VARCHAR(155);
CREATE DOMAIN "TASKS"."Организац." VARCHAR(150);
CREATE DOMAIN "TASKS"."Ответств." INT8;
CREATE DOMAIN "TASKS"."Отправлен" BOOLEAN;
CREATE DOMAIN "TASKS"."ОтчетыОкна" BOOLEAN;
CREATE DOMAIN "TASKS"."Оценка" NUMERIC(16,2);
CREATE DOMAIN "TASKS"."Очередь" BYTEA;
CREATE DOMAIN "TASKS"."ПоВыборке" BOOLEAN;
CREATE DOMAIN "TASKS"."Подразд." VARCHAR(30);
CREATE DOMAIN "TASKS"."Подсказка" VARCHAR(80);
CREATE DOMAIN "TASKS"."Поле" VARCHAR(10);
CREATE DOMAIN "TASKS"."ПолноеНаим" VARCHAR(100);
CREATE DOMAIN "TASKS"."Порядок" BYTEA;
CREATE DOMAIN "TASKS"."ПравоИспол" VARCHAR(100);
CREATE DOMAIN "TASKS"."Примечание" VARCHAR(120);
CREATE DOMAIN "TASKS"."Приоритет" VARCHAR(20);
CREATE DOMAIN "TASKS"."ПричОтказа" VARCHAR(100);
CREATE DOMAIN "TASKS"."Проблемн." BOOLEAN;
CREATE DOMAIN "TASKS"."Просмотр" BOOLEAN;
CREATE DOMAIN "TASKS"."Р/счет" VARCHAR(30);
CREATE DOMAIN "TASKS"."Раздел" BYTEA;
CREATE DOMAIN "TASKS"."Расширение" VARCHAR(7);
CREATE DOMAIN "TASKS"."Регион" INT;
CREATE DOMAIN "TASKS"."РодПадеж" VARCHAR(50);
CREATE DOMAIN "TASKS"."СБК" BYTEA;
CREATE DOMAIN "TASKS"."СетевАдрес" INT8;
CREATE DOMAIN "TASKS"."СимвКоманд" VARCHAR(3);
CREATE DOMAIN "TASKS"."СистПароль" VARCHAR(6);
CREATE DOMAIN "TASKS"."Слияние" BOOLEAN;
CREATE DOMAIN "TASKS"."Событ" BOOLEAN;
CREATE DOMAIN "TASKS"."СокрНазв." VARCHAR(20);
CREATE DOMAIN "TASKS"."Состояние" BYTEA;
CREATE DOMAIN "TASKS"."Сохр.Файл" BOOLEAN;
CREATE DOMAIN "TASKS"."Список" BOOLEAN;
CREATE DOMAIN "TASKS"."Срок" DATE;
CREATE DOMAIN "TASKS"."Статус" VARCHAR(20);
CREATE DOMAIN "TASKS"."Статья" TEXT[];
CREATE DOMAIN "TASKS"."СтрКоманды" VARCHAR(50);
CREATE DOMAIN "TASKS"."Сумма" NUMERIC(16);
CREATE DOMAIN "TASKS"."Таблица" VARCHAR(9);
CREATE DOMAIN "TASKS"."Телефон" VARCHAR(50);
CREATE DOMAIN "TASKS"."Тема" VARCHAR(120);
CREATE DOMAIN "TASKS"."Тип файла" BYTEA;
CREATE DOMAIN "TASKS"."ТипАдреса" VARCHAR(10);
CREATE DOMAIN "TASKS"."ТипДоговор" INT;
CREATE DOMAIN "TASKS"."ТипКонтакт" BYTEA;
CREATE DOMAIN "TASKS"."ТипОбуч." BYTEA;
CREATE DOMAIN "TASKS"."ТипПрогр." INT;
CREATE DOMAIN "TASKS"."ТипСотруд." INT;
CREATE DOMAIN "TASKS"."ТипЭкспорт" BYTEA;
CREATE DOMAIN "TASKS"."Точность" VARCHAR(15);
CREATE DOMAIN "TASKS"."УдалЛичн" BOOLEAN;
CREATE DOMAIN "TASKS"."Удаление" BOOLEAN;
CREATE DOMAIN "TASKS"."Улица" VARCHAR(15);
CREATE DOMAIN "TASKS"."УровГрам." BYTEA;
CREATE DOMAIN "TASKS"."Уровень" BYTEA;
CREATE DOMAIN "TASKS"."Успех" BOOLEAN;
CREATE DOMAIN "TASKS"."ФИО" VARCHAR(35);
CREATE DOMAIN "TASKS"."Фонд" BOOLEAN;
CREATE DOMAIN "TASKS"."ХешПароль" VARCHAR(40);

COMMENT ON DOMAIN "TASKS"."ID пункта" is 'Идентификатор пункта содерж.';
COMMENT ON DOMAIN "TASKS"."N" is 'Номер';
COMMENT ON DOMAIN "TASKS"."id_ACC" is 'Первичный ключ таблицы ACCOUNT';
COMMENT ON DOMAIN "TASKS"."id_ACT" is 'Первичный ключ таблицы ACT';
COMMENT ON DOMAIN "TASKS"."id_CNTR_V" is 'Первичный ключ таблицы CNTR_VID';
COMMENT ON DOMAIN "TASKS"."id_CONTROL" is 'Первичный ключ таблицы CONTROL';
COMMENT ON DOMAIN "TASKS"."id_CONT_C" is 'Первичный ключ таблицы CONT_CTG';
COMMENT ON DOMAIN "TASKS"."id_CONT_T" is 'Первичный ключ таблицы CONT_TIP';
COMMENT ON DOMAIN "TASKS"."id_DEPEND" is 'Первичный ключ таблицы DEPENDEN';
COMMENT ON DOMAIN "TASKS"."id_DETAILS" is 'Первичный dateключ таблицы DETAILS';
COMMENT ON DOMAIN "TASKS"."id_GRTASKS" is 'Первичный ключ таблицы GRTASKS';
COMMENT ON DOMAIN "TASKS"."id_INST_C" is 'Первичный ключ таблицы INST_CON';
COMMENT ON DOMAIN "TASKS"."id_LC_TEAC" is 'Первичный ключ таблицы LC_TEACH';
COMMENT ON DOMAIN "TASKS"."id_OB_BAZ" is 'Первичный ключ таблицы OB_BAZ';
COMMENT ON DOMAIN "TASKS"."id_PHOTOT" is 'Первичный ключ таблицы PHOTOTAB';
COMMENT ON DOMAIN "TASKS"."id_PRNCMDS" is 'Первичный ключ таблицы PRNCMDS';
COMMENT ON DOMAIN "TASKS"."id_PROGRAM" is 'Первичный ключ таблицы PROGRAMM';
COMMENT ON DOMAIN "TASKS"."id_PROJ_T" is 'Первичный ключ таблицы PROJ_TIP';
COMMENT ON DOMAIN "TASKS"."id_PR_TEAC" is 'Первичный ключ таблицы PR_TEACH';
COMMENT ON DOMAIN "TASKS"."id_RIGHTS" is 'Первичный ключ таблицы RIGHTS';
COMMENT ON DOMAIN "TASKS"."id_TAB_RTS" is 'Первичный ключ таблицы TAB_RTS';
COMMENT ON DOMAIN "TASKS"."id_TASKSCT" is 'Первичный ключ таблицы TASKSCTG';
COMMENT ON DOMAIN "TASKS"."id_TAS_POS" is 'Первичный ключ таблицы TAS_POST';
COMMENT ON DOMAIN "TASKS"."id_TAS_TIM" is 'Первичный ключ таблицы TAS_TIME';
COMMENT ON DOMAIN "TASKS"."mmFileName" is 'Путь';
COMMENT ON DOMAIN "TASKS"."Верс\Редак" is 'Версия, Редакция';
COMMENT ON DOMAIN "TASKS"."ВерсПрогр" is 'Версия переданной программы';
COMMENT ON DOMAIN "TASKS"."ВидПроблем" is 'Вид проблемы';
COMMENT ON DOMAIN "TASKS"."ВремяЗаявк" is 'Время заявки';
COMMENT ON DOMAIN "TASKS"."ВысокПриор" is 'Высокий приоритет';
COMMENT ON DOMAIN "TASKS"."ДатаВыпуск" is 'Дата выпуска';
COMMENT ON DOMAIN "TASKS"."ДатаСтатус" is 'Дата установки статуса';
COMMENT ON DOMAIN "TASKS"."Заблокиров" is 'Заблокирован пользователь';
COMMENT ON DOMAIN "TASKS"."Затраты" is 'Трудозатраты';
COMMENT ON DOMAIN "TASKS"."ЗначТекст" is 'Значение текста';
COMMENT ON DOMAIN "TASKS"."ИзменЛичн" is 'Изменять только свои записи';
COMMENT ON DOMAIN "TASKS"."КлючНастр" is 'Ключ системных настроек';
COMMENT ON DOMAIN "TASKS"."КодАдреса" is 'Код адреса';
COMMENT ON DOMAIN "TASKS"."КодДоговор" is 'Код договора';
COMMENT ON DOMAIN "TASKS"."КодКоманды" is 'Код команды печати';
COMMENT ON DOMAIN "TASKS"."КодМеню" is 'Код элемента';
COMMENT ON DOMAIN "TASKS"."КодПарам" is 'Код параметра';
COMMENT ON DOMAIN "TASKS"."КодПринт" is 'Код принтера';
COMMENT ON DOMAIN "TASKS"."КодПункта" is 'Пункт содержания постановки';
COMMENT ON DOMAIN "TASKS"."КодРезульт" is 'Результат';
COMMENT ON DOMAIN "TASKS"."КодТипРес" is 'Код типа ресурсов';
COMMENT ON DOMAIN "TASKS"."КодТипРеш" is 'Код тип.решения';
COMMENT ON DOMAIN "TASKS"."КодЭлАдрОр" is 'Код электронного адреса';
COMMENT ON DOMAIN "TASKS"."КодЭлАдрес" is 'Код электронного адреса';
COMMENT ON DOMAIN "TASKS"."КолРайотд" is 'Кол-во райотделов';
COMMENT ON DOMAIN "TASKS"."КонтрПарам" is 'Контрольный параметр';
COMMENT ON DOMAIN "TASKS"."Кор/счет" is 'Корреспондентский счет';
COMMENT ON DOMAIN "TASKS"."НазвПункта" is 'Название пункта содержания';
COMMENT ON DOMAIN "TASKS"."НаселПункт" is 'Населенный пункт';
COMMENT ON DOMAIN "TASKS"."НеАктуальн" is 'Не актуально';
COMMENT ON DOMAIN "TASKS"."НомУдост." is 'Номер';
COMMENT ON DOMAIN "TASKS"."НомерДокум" is 'Номер документа';
COMMENT ON DOMAIN "TASKS"."ОкончЛицен" is 'Срок окончания лицензии';
COMMENT ON DOMAIN "TASKS"."Организац." is 'Название организации';
COMMENT ON DOMAIN "TASKS"."Подразд." is 'Подразделение (заполн.для УВД)';
COMMENT ON DOMAIN "TASKS"."ПолноеНаим" is 'Полное наименование';
COMMENT ON DOMAIN "TASKS"."ПравоИспол" is 'Право использования';
COMMENT ON DOMAIN "TASKS"."Р/счет" is 'Расчетный счет';
COMMENT ON DOMAIN "TASKS"."СетевАдрес" is 'Сетевой адрес';
COMMENT ON DOMAIN "TASKS"."СимвКоманд" is 'Символ команды печати';
COMMENT ON DOMAIN "TASKS"."Срок" is 'Ожидаемый срок завершения';
COMMENT ON DOMAIN "TASKS"."СтрКоманды" is 'Управляющая последовательность';
COMMENT ON DOMAIN "TASKS"."Сумма" is 'Сумма по договору';
COMMENT ON DOMAIN "TASKS"."ТипДоговор" is 'Тип договора';
COMMENT ON DOMAIN "TASKS"."УдалЛичн" is 'Удалять только свои записи';
COMMENT ON DOMAIN "TASKS"."Удаление" is 'Права на удаление';

CREATE TABLE "TASKS"."ACCOUNT" (
	"id_ACC"		"TASKS"."id_ACC",
	"KodDogovor"	"TASKS"."КодДоговор",
	"N_scheta"		"TASKS"."N счета",
	"DataScheta"	"TASKS"."Дата",
	"Summa"			"TASKS"."Сумма",
	"DataOplaty"	"TASKS"."ДатаОплаты",
	"Primechanie"	"TASKS"."Примечание"
);

CREATE TABLE "TASKS"."ACT" (
	"id_ACT"		"TASKS"."id_ACT",
	"KodDogovor"	"TASKS"."КодДоговор",
	"Klient"		"TASKS"."КодКлиента",
	"Otpravlen"	"TASKS"."Отправлен",
	"UtvPostav_"	"TASKS"."Дата",
	"UtvZakazch_"	"TASKS"."Дата",
	"SummaAkta"	"TASKS"."Сумма"
);

COMMENT ON COLUMN "TASKS"."ACT"."UtvPostav_" is 'Дата утверждения Поставщиком';
COMMENT ON COLUMN "TASKS"."ACT"."UtvZakazch_" is 'Дата утверждения Заказчиком';
COMMENT ON COLUMN "TASKS"."ACT"."SummaAkta" is 'Сумма по акту';
CREATE TABLE "TASKS"."ADDRESS" (
	"KodAdresa"	"TASKS"."КодАдреса",
	"KodKlienta"	"TASKS"."КодКлиента",
	"Region"		"TASKS"."Регион",
	"NaselPunkt"	"TASKS"."КодНасПунк",
	"Ulicza"		"TASKS"."Улица",
	"Dom"			"TASKS"."Дом",
	"Kv_"			"TASKS"."Кв."
);

CREATE TABLE "TASKS"."ARTICLES" (
	"ID_punkta"	"TASKS"."ID пункта",
	"TextData"		"TASKS"."TextData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"ID_stati"		"TASKS"."ID статьи"
);

CREATE TABLE "TASKS"."BANC_REC" (
	"KodKlienta"	"TASKS"."КодКлиента",
	"Bank"			"TASKS"."Банк",
	"Rschet"		"TASKS"."Р/счет",
	"Korschet"		"TASKS"."Кор/счет",
	"INN"			"TASKS"."ИНН",
	"BIK"			"TASKS"."БИК",
	"OKPO"			"TASKS"."ОКПО",
	"OKONX"			"TASKS"."ОКОНХ"
);

CREATE TABLE "TASKS"."CATEGORY" (
	"Kategoriya"	"TASKS"."Категория",
	"Naimenovan"	"TASKS"."Наименован",
	"PolnoeNaim"	"TASKS"."ПолноеНаим"
);

CREATE TABLE "TASKS"."CERTIFIC" (
	"KodUdostov"	"TASKS"."КодУдостов",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"NomUdost_"	"TASKS"."НомУдост.",
	"DataVydachi"	"TASKS"."ДатаВыдачи",
	"KodPolz_"		"TASKS"."КодПольз."
);

COMMENT ON COLUMN "TASKS"."CERTIFIC"."KodSotrudn" is 'Владелец удостоверения';
COMMENT ON COLUMN "TASKS"."CERTIFIC"."KodPolz_" is 'Сотрудник,отв.за выдачу';
CREATE TABLE "TASKS"."CHAP_REF" (
	"Razdel"		"TASKS"."Раздел",
	"Naimenovan"	"TASKS"."Наименован"
);

CREATE TABLE "TASKS"."CLIENT" (
	"KodKlienta"	"TASKS"."КодКлиента",
	"Organizacz_"	"TASKS"."Организац.",
	"KodVedomst"	"TASKS"."КодВедомст",
	"Podrazd_"		"TASKS"."Подразд.",
	"Fond"			"TASKS"."Фонд"
);

COMMENT ON COLUMN "TASKS"."CLIENT"."KodVedomst" is 'Ведомство';
CREATE TABLE "TASKS"."CNTR_PAR" (
	"KodParam"		"TASKS"."КодПарам",
	"KontrParam"	"TASKS"."КонтрПарам"
);

COMMENT ON COLUMN "TASKS"."CNTR_PAR"."KontrParam" is 'Контролировать';
CREATE TABLE "TASKS"."CNTR_VID" (
	"id_CNTR_V"	"TASKS"."id_CNTR_V",
	"KodDogovor"	"TASKS"."КодДоговор",
	"TipDogovor"	"TASKS"."ТипДоговор"
);

CREATE TABLE "TASKS"."CNT_PRIM" (
	"KodKontakt"	"TASKS"."КодКонтакт",
	"TextData"		"TASKS"."TextData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."CONTENTS" (
	"ID_punkta"	"TASKS"."ID пункта",
	"KodPunkta"	"TASKS"."КодПункта",
	"SBK"			"TASKS"."СБК",
	"NazvPunkta"	"TASKS"."НазвПункта",
	"Aktualna"		"TASKS"."Актуальна",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."CONTENTS"."Aktualna" is 'Постановка соответствует коду';
CREATE TABLE "TASKS"."CONTRACT" (
	"KodDogovor"	"TASKS"."КодДоговор",
	"NomerDokum"	"TASKS"."НомерДокум",
	"Platelshhik"	"TASKS"."КодКлиента",
	"Region"		"TASKS"."Регион",
	"DataNachal_"	"TASKS"."ДатаНачал.",
	"DataKoncza"	"TASKS"."ДатаКонца",
	"KolRajotd"	"TASKS"."КолРайотд",
	"PravoIspol"	"TASKS"."ПравоИспол",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."CONTRACT"."DataNachal_" is 'Дата договора с';
COMMENT ON COLUMN "TASKS"."CONTRACT"."DataKoncza" is 'Дата договора по';
CREATE TABLE "TASKS"."CONTROL" (
	"id_CONTROL"	"TASKS"."id_CONTROL",
	"KodDogovor"	"TASKS"."КодДоговор",
	"KodParam"		"TASKS"."КодПарам"
);

CREATE TABLE "TASKS"."CONT_CTG" (
	"id_CONT_C"	"TASKS"."id_CONT_C",
	"ID_punkta"	"TASKS"."ID пункта",
	"Kategoriya"	"TASKS"."Категория",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."CONT_TIP" (
	"id_CONT_T"	"TASKS"."id_CONT_T",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"KodTipResh"	"TASKS"."КодТипРеш",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."CON_TIME" (
	"KodRabKont"	"TASKS"."КодРабКонт",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"KodVidRab"	"TASKS"."КодВидРаб",
	"Data"			"TASKS"."Дата",
	"Vremya"		"TASKS"."Время",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"KodMastera"	"TASKS"."КодМастера",
	"Zatraty"		"TASKS"."Затраты",
	"PrichOtkaza"	"TASKS"."ПричОтказа",
	"KodPolz_"		"TASKS"."КодПольз.",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"Primechanie"	"TASKS"."Примечание",
	"TextData"		"TASKS"."TextData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."CON_TIME"."KodKontakt" is 'Контакт';
COMMENT ON COLUMN "TASKS"."CON_TIME"."KodVidRab" is 'Вид работы';
COMMENT ON COLUMN "TASKS"."CON_TIME"."KodSotrudn" is 'Пользователь';
COMMENT ON COLUMN "TASKS"."CON_TIME"."KodMastera" is 'Ответственный';
COMMENT ON COLUMN "TASKS"."CON_TIME"."PrichOtkaza" is 'Причина отказа';
CREATE TABLE "TASKS"."CORR_IN" (
	"KodPismVx"	"TASKS"."КодПисьмВх",
	"KodRabKont"	"TASKS"."КодРабКонт",
	"N_pisma"		"TASKS"."N письма",
	"Data"			"TASKS"."Дата",
	"KodKlienta"	"TASKS"."КодКлиента",
	"Komu"			"TASKS"."КодМастера",
	"Podpis"		"TASKS"."КодСотрудн",
	"Ispolnit_"	"TASKS"."КодСотрудн",
	"Primechanie"	"TASKS"."Примечание",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."CORR_IN"."KodKlienta" is 'Организация';
COMMENT ON COLUMN "TASKS"."CORR_IN"."Komu" is 'Кому адресовано';
COMMENT ON COLUMN "TASKS"."CORR_IN"."Ispolnit_" is 'Исполнитель';
CREATE TABLE "TASKS"."CORR_OUT" (
	"KodPismIs"	"TASKS"."КодПисьмИс",
	"KodRabKont"	"TASKS"."КодРабКонт",
	"N_pisma"		"TASKS"."N Исходящ",
	"Data"			"TASKS"."Дата",
	"KodKlienta"	"TASKS"."КодКлиента",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"KodMastera"	"TASKS"."КодМастера",
	"Ispolnit_"	"TASKS"."КодМастера",
	"Primechanie"	"TASKS"."Примечание",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."CORR_OUT"."KodKlienta" is 'Организация';
COMMENT ON COLUMN "TASKS"."CORR_OUT"."KodSotrudn" is 'Кому адресовано';
COMMENT ON COLUMN "TASKS"."CORR_OUT"."KodMastera" is 'Подпись';
COMMENT ON COLUMN "TASKS"."CORR_OUT"."Ispolnit_" is 'Исполнитель';
CREATE TABLE "TASKS"."DEPENDEN" (
	"id_DEPEND"	"TASKS"."id_DEPEND",
	"Predshestv"	"TASKS"."КодЗадачи",
	"Posleduyushh"	"TASKS"."КодЗадачи",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."DEPENDEN"."Predshestv" is 'Предшествующая';
COMMENT ON COLUMN "TASKS"."DEPENDEN"."Posleduyushh" is 'Последующая';
CREATE TABLE "TASKS"."DESCRIPT" (
	"KodZadachi"	"TASKS"."КодЗадачи",
	"TextData"		"TASKS"."TextData",
	"ID_descr"		"TASKS"."ID_descr"
);

CREATE TABLE "TASKS"."DESKMENU" (
	"KodMenyuObs"	"TASKS"."КодМенюОбс",
	"KodMenyu"		"TASKS"."КодМеню",
	"ImyaElement"	"TASKS"."ИмяЭлемент",
	"IndeksMenyu"	"TASKS"."ИндексМеню",
	"Razdel"		"TASKS"."Раздел",
	"Uroven"		"TASKS"."Уровень",
	"Resurs"		"TASKS"."КодХран",
	"SBK"			"TASKS"."СБК",
	"KodTabliczy"	"TASKS"."КодТаблицы",
	"Podskazka"	"TASKS"."Подсказка",
	"Izm_Otchet"	"TASKS"."Изм.Отчет",
	"Soxr_Fajl"	"TASKS"."Сохр.Файл",
	"PoVyborke"	"TASKS"."ПоВыборке",
	"BezObekt_"	"TASKS"."БезОбъект.",
	"NeVybirat"	"TASKS"."НеВыбирать",
	"NePokazyv_"	"TASKS"."НеПоказыв.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен"
);

COMMENT ON COLUMN "TASKS"."DESKMENU"."IndeksMenyu" is 'Расположение';
COMMENT ON COLUMN "TASKS"."DESKMENU"."Razdel" is 'Вид элемента';
CREATE TABLE "TASKS"."DETAILS" (
	"id_DETAILS"	"TASKS"."id_DETAILS",
	"KodSeansa"	"TASKS"."КодСеанса",
	"KodMenyuObs"	"TASKS"."КодМенюОбс",
	"DataRaboty"	"TASKS"."ДатаИзмен.",
	"VremyaRabot"	"TASKS"."ВремяИзмен"
);

CREATE TABLE "TASKS"."DM_ALIAS" (
	"KodImElXr"	"TASKS"."КодИмЭлХр",
	"ImyaElement"	"TASKS"."ИмяЭлемент",
	"KodXran"		"TASKS"."КодХран"
);

CREATE TABLE "TASKS"."DOC_PRIM" (
	"KodDogovor"	"TASKS"."КодДоговор",
	"Zametki"		"TASKS"."Заметки"
);

CREATE TABLE "TASKS"."DSKSTRG" (
	"KodXran"		"TASKS"."КодХран",
	"Opisanie"		"TASKS"."Описание",
	"BinData"		"TASKS"."BinData",
	"ImyaFajla"	"TASKS"."ИмяФайла",
	"KodTipRes"	"TASKS"."КодТипРес",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."EXP_PRN" (
	"KodEksport"	"TASKS"."КодЭкспорт",
	"KodSeansa"	"TASKS"."КодСеанса",
	"ImyaIstochn"	"TASKS"."ИмяИсточн",
	"ImyaPriemn"	"TASKS"."ИмяПриемн",
	"TipEksport"	"TASKS"."ТипЭкспорт",
	"Uspex"			"TASKS"."Успех",
	"VremyaNach"	"TASKS"."ВремяНач",
	"Dliteln"		"TASKS"."Длительн",
	"VremyaSozd"	"TASKS"."ВремяСозд"
);

CREATE TABLE "TASKS"."E_MAILLC" (
	"KodElAdres"	"TASKS"."КодЭлАдрес",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"ImyaAdresa"	"TASKS"."ИмяАдреса",
	"KodTipa"		"TASKS"."КодТипа",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."E_MAILOR" (
	"KodElAdres"	"TASKS"."КодЭлАдрОр",
	"KodKlienta"	"TASKS"."КодКлиента",
	"ImyaAdresa"	"TASKS"."ИмяАдреса",
	"KodTipa"		"TASKS"."КодТипа",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."GROUPS" (
	"KodGruppy"	"TASKS"."КодГруппы",
	"Nazvanie"		"TASKS"."Название",
	"Srok"			"TASKS"."Срок",
	"Aktualna"		"TASKS"."Актуальна",
	"VysokPrior"	"TASKS"."ВысокПриор",
	"DataVypusk"	"TASKS"."ДатаВыпуск",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"Otvetstv_"	"TASKS"."Ответств.",
	"TextData"		"TASKS"."TextData"
);

COMMENT ON COLUMN "TASKS"."GROUPS"."TextData" is 'Примечание';
CREATE TABLE "TASKS"."GRTASKS" (
	"id_GRTASKS"	"TASKS"."id_GRTASKS",
	"KodGruppy"	"TASKS"."КодГруппы",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."HIS_STAT" (
	"KodIstorii"	"TASKS"."КодИстории",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"KodStatusa"	"TASKS"."КодСтатуса",
	"DataStatus"	"TASKS"."ДатаСтатус",
	"VremStatus"	"TASKS"."ВремСтатус",
	"OtvZaStat"	"TASKS"."КодМастера",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."HIS_STAT"."OtvZaStat" is 'Отвественный за статус';
CREATE TABLE "TASKS"."INSTRUC" (
	"KodInstr"		"TASKS"."КодИнстр",
	"NazvPolnoe"	"TASKS"."НазвПолное",
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"Statya"		"TASKS"."Статья",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."INSTRUC"."TipProgr_" is 'Программа';
CREATE TABLE "TASKS"."INST_CON" (
	"id_INST_C"	"TASKS"."id_INST_C",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"KodInstr"		"TASKS"."КодИнстр",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."LAYOUTS" (
	"Layout_id"	"TASKS"."Layout_id",
	"BinData"		"TASKS"."BinData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен"
);

CREATE TABLE "TASKS"."LC_CONT" (
	"KodKontakt"	"TASKS"."КодКонтакт",
	"KodPostupl"	"TASKS"."КодПоступл",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"Primechanie"	"TASKS"."Примечание",
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"DataKontak"	"TASKS"."ДатаКонтак",
	"VremyaZayavk"	"TASKS"."ВремяЗаявк",
	"Motivacziya"	"TASKS"."Мотивация",
	"Kem_prinyat"	"TASKS"."КодМастера",
	"KodTipaKon"	"TASKS"."КодТипаКон",
	"KodStatusa"	"TASKS"."КодСтатуса",
	"DataStatus"	"TASKS"."ДатаСтатус",
	"VremStatus"	"TASKS"."ВремСтатус",
	"OtvZaStat"	"TASKS"."КодМастера",
	"KodPriorit"	"TASKS"."КодПриорит",
	"Komu_pered"	"TASKS"."КодМастера",
	"KodPeredach"	"TASKS"."КодПередач",
	"N_Reksoft"	"TASKS"."N_Рексофт",
	"KodVxIsx"		"TASKS"."КодВх\Исх",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."LC_CONT"."KodPostupl" is 'Вид поступления';
COMMENT ON COLUMN "TASKS"."LC_CONT"."KodSotrudn" is 'Пользователь';
COMMENT ON COLUMN "TASKS"."LC_CONT"."Primechanie" is 'Тема (кратк.описание проблемы)';
COMMENT ON COLUMN "TASKS"."LC_CONT"."TipProgr_" is 'Программа';
COMMENT ON COLUMN "TASKS"."LC_CONT"."DataKontak" is 'Дата заявки';
COMMENT ON COLUMN "TASKS"."LC_CONT"."Motivacziya" is 'Мотивация (данные приказа)';
COMMENT ON COLUMN "TASKS"."LC_CONT"."KodTipaKon" is 'Тип заявки';
COMMENT ON COLUMN "TASKS"."LC_CONT"."KodStatusa" is 'Статус';
COMMENT ON COLUMN "TASKS"."LC_CONT"."OtvZaStat" is 'Отвественный за статус';
COMMENT ON COLUMN "TASKS"."LC_CONT"."KodPriorit" is 'Приоритет';
COMMENT ON COLUMN "TASKS"."LC_CONT"."Komu_pered" is 'Кому передан';
COMMENT ON COLUMN "TASKS"."LC_CONT"."KodPeredach" is 'Куда передавать данные?';
COMMENT ON COLUMN "TASKS"."LC_CONT"."N_Reksoft" is 'Номер заявки на сайте Рексофт';
CREATE TABLE "TASKS"."LC_TEACH" (
	"id_LC_TEAC"	"TASKS"."id_LC_TEAC",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"TipObuch_"	"TASKS"."ТипОбуч.",
	"ObemCHasov"	"TASKS"."ОбъемЧасов",
	"DataNachal_"	"TASKS"."ДатаНачал.",
	"DataKoncza"	"TASKS"."ДатаКонца",
	"Zachteno"		"TASKS"."Зачтено",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен"
);

CREATE TABLE "TASKS"."LIC_NADD" (
	"KodDopLicz"	"TASKS"."КодДопЛиц",
	"KodLiczenz"	"TASKS"."КодЛиценз",
	"SetevAdres"	"TASKS"."СетевАдрес",
	"Region"		"TASKS"."Регион",
	"KodKlienta"	"TASKS"."КодКлиента",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."MASTERS" (
	"KodMastera"	"TASKS"."КодМастера",
	"Imya"			"TASKS"."Имя",
	"NeVybirat"	"TASKS"."НеВыбирать",
	"NePokazyv_"	"TASKS"."НеПоказыв."
);

CREATE TABLE "TASKS"."MENUITEM" (
	"IndeksMenyu"	"TASKS"."ИндексМеню",
	"Naimenovan"	"TASKS"."Название"
);

COMMENT ON COLUMN "TASKS"."MENUITEM"."Naimenovan" is 'Расположение';
CREATE TABLE "TASKS"."MULTIDEF" (
	"mmFileName"	"TASKS"."mmFileName",
	"KodMulti"		"TASKS"."КодМульти",
	"mmSubName"	"TASKS"."mmSubName",
	"mmFileExt"	"TASKS"."mmFileExt",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."OB_BAZ" (
	"id_OB_BAZ"	"TASKS"."id_OB_BAZ",
	"KodRajona"	"TASKS"."КодРайона",
	"KodObedin"	"TASKS"."КодОбъедин",
	"DataObed_"	"TASKS"."ДатаОбъед."
);

CREATE TABLE "TASKS"."PAYMENT" (
	"KodPlPor"		"TASKS"."КодПлПор",
	"N"				"TASKS"."N",
	"Data"			"TASKS"."Дата"
);

CREATE TABLE "TASKS"."PCMDS" (
	"KodKomandy"	"TASKS"."КодКоманды",
	"Nazvanie"		"TASKS"."Название",
	"SimvKomand"	"TASKS"."СимвКоманд"
);

CREATE TABLE "TASKS"."PHOTOTAB" (
	"id_PHOTOT"	"TASKS"."id_PHOTOT",
	"Tab_Obekt"	"TASKS"."Таблица",
	"Tab_Foto"		"TASKS"."Таблица",
	"KlyuchObekt"	"TASKS"."Имя поля",
	"KlyuchFoto"	"TASKS"."Имя поля"
);

COMMENT ON COLUMN "TASKS"."PHOTOTAB"."Tab_Obekt" is 'Сущность,с которой связ. фото';
COMMENT ON COLUMN "TASKS"."PHOTOTAB"."Tab_Foto" is 'Таблица описаний фото';
COMMENT ON COLUMN "TASKS"."PHOTOTAB"."KlyuchObekt" is 'Имя ключа связи в сущности';
COMMENT ON COLUMN "TASKS"."PHOTOTAB"."KlyuchFoto" is 'Имя ключа связи в таблице фото';
CREATE TABLE "TASKS"."PRNCMDS" (
	"id_PRNCMDS"	"TASKS"."id_PRNCMDS",
	"KodPrint"		"TASKS"."КодПринт",
	"KodKomandy"	"TASKS"."КодКоманды",
	"StrKomandy"	"TASKS"."СтрКоманды"
);

CREATE TABLE "TASKS"."PRNS" (
	"KodPrint"		"TASKS"."КодПринт",
	"ImyaPrint"	"TASKS"."Название"
);

COMMENT ON COLUMN "TASKS"."PRNS"."ImyaPrint" is 'ИмяПринтера';
CREATE TABLE "TASKS"."PROBL" (
	"KodProblem"	"TASKS"."КодПроблем",
	"VidProblem"	"TASKS"."ВидПроблем",
	"Primechanie"	"TASKS"."Примечание",
	"Zametki"		"TASKS"."Заметки",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."PROGRAMM" (
	"id_PROGRAM"	"TASKS"."id_PROGRAM",
	"KodDogovor"	"TASKS"."КодДоговор",
	"TipProgr_"	"TASKS"."ТипПрогр."
);

CREATE TABLE "TASKS"."PROJ_TIP" (
	"id_PROJ_T"	"TASKS"."id_PROJ_T",
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"KodTipResh"	"TASKS"."КодТипРеш",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."PR_TEACH" (
	"id_PR_TEAC"	"TASKS"."id_PR_TEAC",
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"KodUdostov"	"TASKS"."КодУдостов"
);

CREATE TABLE "TASKS"."REG_KOR" (
	"KodZHurnVx"	"TASKS"."КодЖурнВх",
	"Vxodyashhij"	"TASKS"."Номер",
	"Data"			"TASKS"."Дата",
	"Pismo"			"TASKS"."КодПисьмВх",
	"Peredano"		"TASKS"."КодМастера",
	"KontrSrok"	"TASKS"."Дата",
	"Primechanie"	"TASKS"."Примечание",
	"KodPismIs"	"TASKS"."КодПисьмИс",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."REG_KOR"."Vxodyashhij" is 'Входящий номер';
COMMENT ON COLUMN "TASKS"."REG_KOR"."Data" is 'Получено';
COMMENT ON COLUMN "TASKS"."REG_KOR"."KontrSrok" is 'Контрольный срок';
COMMENT ON COLUMN "TASKS"."REG_KOR"."KodPismIs" is 'Ответ';
CREATE TABLE "TASKS"."REG_KOUT" (
	"KodZHurnIsx"	"TASKS"."КодЖурнИсх",
	"Isxodyashhij"	"TASKS"."N Исходящ",
	"Data"			"TASKS"."Дата",
	"Pismo"			"TASKS"."КодПисьмИс",
	"Primechanie"	"TASKS"."Примечание",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."REG_KOUT"."Isxodyashhij" is 'Исходящий номер';
CREATE TABLE "TASKS"."REKSOFT" (
	"KodReksoft"	"TASKS"."КодРексофт",
	"KodRabKont"	"TASKS"."КодРабКонт",
	"Oczenka"		"TASKS"."Оценка",
	"KodTochnost"	"TASKS"."КодТочност",
	"Ochered"		"TASKS"."Очередь"
);

CREATE TABLE "TASKS"."RESCH" (
	"KodResheniya"	"TASKS"."КодРешения",
	"Primechanie"	"TASKS"."Примечание",
	"Zametki"		"TASKS"."Заметки",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."RIGHTS" (
	"id_RIGHTS"	"TASKS"."id_RIGHTS",
	"LichnyjKod"	"TASKS"."Ответств.",
	"KodMenyuObs"	"TASKS"."КодМенюОбс",
	"Vvod"			"TASKS"."Ввод",
	"Izmenenie"	"TASKS"."Изменение",
	"IzmenLichn"	"TASKS"."ИзменЛичн",
	"Prosmotr"		"TASKS"."Просмотр",
	"Udalenie"		"TASKS"."Удаление",
	"UdalLichn"	"TASKS"."УдалЛичн",
	"Vyborki"		"TASKS"."Выборки",
	"OtchetyOkna"	"TASKS"."ОтчетыОкна",
	"Ogranichen_"	"TASKS"."Ограничен.",
	"Vizualiz_"	"TASKS"."Визуализ.",
	"Sliyanie"		"TASKS"."Слияние",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен."
);

COMMENT ON COLUMN "TASKS"."RIGHTS"."LichnyjKod" is 'Пользователь';
CREATE TABLE "TASKS"."RJ_LICO" (
	"Organizacz_"	"TASKS"."КодКлиента",
	"KodSotrudn"	"TASKS"."КодСотрудн",
	"FIO"			"TASKS"."ФИО",
	"Telefon"		"TASKS"."Телефон",
	"KodRajona"	"TASKS"."КодРайона",
	"TipSotrud_"	"TASKS"."ТипСотруд.",
	"Dolzhnost"	"TASKS"."Должность",
	"UrovGram_"	"TASKS"."УровГрам.",
	"DataUvoln"	"TASKS"."ДатаУвольн",
	"DataAktual"	"TASKS"."ДатаАктуал",
	"NeVybirat"	"TASKS"."НеВыбирать",
	"NePokazyv_"	"TASKS"."НеПоказыв.",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен"
);

COMMENT ON COLUMN "TASKS"."RJ_LICO"."Organizacz_" is 'Организация';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."KodRajona" is 'Район';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."TipSotrud_" is 'Тип сотрудника';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."UrovGram_" is 'Уровень грамотности';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."DataUvoln" is 'Дата увольнения';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."DataAktual" is 'Данные актуальны на дату';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."NeVybirat" is 'Не выбирать';
COMMENT ON COLUMN "TASKS"."RJ_LICO"."NePokazyv_" is 'Не показывать';
CREATE TABLE "TASKS"."RJ_PRIM" (
	"KodOrganiz"	"TASKS"."КодОрганиз",
	"Zametki"		"TASKS"."Заметки"
);

CREATE TABLE "TASKS"."SEANS" (
	"KodSeansa"	"TASKS"."КодСеанса",
	"KodStanczii"	"TASKS"."КодСтанции",
	"DataVxoda"	"TASKS"."ДатаСеанса",
	"VremyaVxoda"	"TASKS"."ВремяСеанс",
	"DataVyxoda"	"TASKS"."ДатаСеанса",
	"VremyaVyxod"	"TASKS"."ВремяСеанс",
	"Otvetstv_"	"TASKS"."Ответств.",
	"Problemn_"	"TASKS"."Проблемн.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен"
);

CREATE TABLE "TASKS"."SETTINGS" (
	"KlyuchNastr"	"TASKS"."КлючНастр",
	"ZnachTekst"	"TASKS"."ЗначТекст",
	"BinData"		"TASKS"."BinData"
);

CREATE TABLE "TASKS"."SLOVO3" (
	"KodOblasti"	"TASKS"."КодОбласти",
	"NazvOblast"	"TASKS"."НазвОбласт",
	"KodGosva"		"TASKS"."КодГос-ва",
	"NazvGICZ"		"TASKS"."НазвГИЦ",
	"CODE"			"TASKS"."CODE"
);

CREATE TABLE "TASKS"."SLV_CLN" (
	"IDC"			"TASKS"."IDC",
	"KodTabliczy"	"TASKS"."КодТаблицы",
	"Slovar"		"TASKS"."Таблица",
	"Pole"			"TASKS"."Поле",
	"Poryadok"		"TASKS"."Порядок",
	"Obekty"		"TASKS"."Объекты",
	"Spisok"		"TASKS"."Список"
);

CREATE TABLE "TASKS"."SPR038" (
	"KodPodrazd"	"TASKS"."КодПодразд",
	"NazvPodr_"	"TASKS"."НазвПодр.",
	"LiniyaSluzh_"	"TASKS"."ЛинияСлуж.",
	"SokrNazv_"	"TASKS"."СокрНазв.",
	"RodPadezh"	"TASKS"."РодПадеж",
	"ImyaSimens"	"TASKS"."ИмяСименс",
	"Sobyt"			"TASKS"."Событ",
	"Kod_v_KUPe"	"TASKS"."Код в КУПе",
	"Grazhd_"		"TASKS"."Гражд.",
	"NePokazyv_"	"TASKS"."НеПоказыв."
);

CREATE TABLE "TASKS"."STATE" (
	"Sostoyanie"	"TASKS"."Состояние",
	"Naimenovan"	"TASKS"."Наименован",
	"Aktualna"		"TASKS"."Актуальна"
);

CREATE TABLE "TASKS"."STATIONS" (
	"KodStanczii"	"TASKS"."КодСтанции",
	"ImyaStanczii"	"TASKS"."ИмяСтанции",
	"Uroven"		"TASKS"."Уровень",
	"DataIzmen_"	"TASKS"."ДатаИзмен."
);

CREATE TABLE "TASKS"."SU_PROGR" (
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"NazvProgr_"	"TASKS"."НазвПрогр.",
	"KodVedomst"	"TASKS"."КодВедомст",
	"NeVybirat"	"TASKS"."НеВыбирать",
	"NePokazyv_"	"TASKS"."НеПоказыв."
);

CREATE TABLE "TASKS"."SU_RAJ" (
	"KodRajona"	"TASKS"."КодРайона",
	"NazvRajona"	"TASKS"."НазвРайона",
	"Mezhdug_Kod"	"TASKS"."Междуг.Код",
	"Region"		"TASKS"."Регион"
);

CREATE TABLE "TASKS"."S_CONT" (
	"TipKontakt"	"TASKS"."ТипКонтакт",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_DOG" (
	"TipDogovor"	"TASKS"."ТипДоговор",
	"Dogovor"		"TASKS"."Название"
);

COMMENT ON COLUMN "TASKS"."S_DOG"."Dogovor" is 'Название договора';
CREATE TABLE "TASKS"."S_FILETP" (
	"Tip_fajla"	"TASKS"."Тип файла",
	"Rasshirenie"	"TASKS"."Расширение",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_GRAM" (
	"UrovGram_"	"TASKS"."УровГрам.",
	"Gramotn_"		"TASKS"."Грамотн."
);

CREATE TABLE "TASKS"."S_IN_OUT" (
	"KodVxIsx"		"TASKS"."КодВх\Исх",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_LIC" (
	"TipSotrud_"	"TASKS"."ТипСотруд.",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_MAIL" (
	"KodTipa"		"TASKS"."КодТипа",
	"TipAdresa"	"TASKS"."ТипАдреса"
);

CREATE TABLE "TASKS"."S_NAS_P" (
	"KodNasPunk"	"TASKS"."КодНасПунк",
	"NaselPunkt"	"TASKS"."НаселПункт",
	"Mezhdug_Kod"	"TASKS"."Междуг.Код"
);

CREATE TABLE "TASKS"."S_OBBAZ" (
	"KodObedin"	"TASKS"."КодОбъедин",
	"NazvObed_"	"TASKS"."НазвОбъед."
);

CREATE TABLE "TASKS"."S_OBL" (
	"Region"		"TASKS"."Регион",
	"Nazvanie"		"TASKS"."Название",
	"NazvReksof"	"TASKS"."Название",
	"NePokazyv_"	"TASKS"."НеПоказыв."
);

CREATE TABLE "TASKS"."S_OCENK" (
	"KodTochnost"	"TASKS"."КодТочност",
	"Tochnost"		"TASKS"."Точность"
);

CREATE TABLE "TASKS"."S_ORG_M1" (
	"KodOrgM1"		"TASKS"."КодОргМ1",
	"KodCZBDUIG"	"TASKS"."КодЦБДУИГ",
	"OrganFMS"		"TASKS"."ОрганФМС",
	"KodOblasti"	"TASKS"."КодОбласти",
	"KodPodrazd"	"TASKS"."КодПодразд",
	"AdresOrg_"	"TASKS"."АдресОрг."
);

CREATE TABLE "TASKS"."S_OTDEL" (
	"KodOtdela"	"TASKS"."КодОтдела",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_POSTUP" (
	"KodPostupl"	"TASKS"."КодПоступл",
	"Nazvanie"		"TASKS"."НазвПоступ"
);

CREATE TABLE "TASKS"."S_PRIOR" (
	"KodPriorit"	"TASKS"."КодПриорит",
	"Nazvanie"		"TASKS"."Приоритет",
	"Kritichnt"	"TASKS"."Критичн-ть"
);

CREATE TABLE "TASKS"."S_PROBL" (
	"VidProblem"	"TASKS"."ВидПроблем",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_PROVER" (
	"KodRezult"	"TASKS"."КодРезульт",
	"Naimenovan"	"TASKS"."Наименован"
);

CREATE TABLE "TASKS"."S_REGSOF" (
	"KodPeredach"	"TASKS"."КодПередач",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_STATUS" (
	"KodStatusa"	"TASKS"."КодСтатуса",
	"Nazvanie"		"TASKS"."Статус"
);

CREATE TABLE "TASKS"."S_STRGTP" (
	"KodTipRes"	"TASKS"."КодТипРес",
	"Naimenovan"	"TASKS"."Наименован"
);

CREATE TABLE "TASKS"."S_TABLES" (
	"KodTabliczy"	"TASKS"."КодТаблицы",
	"Tablicza"		"TASKS"."Таблица",
	"Nazvanie"		"TASKS"."Название",
	"Uroven"		"TASKS"."Уровень",
	"NeProtokol"	"TASKS"."НеПротокол",
	"KontrKlyuch"	"TASKS"."КонтрКлюч"
);

CREATE TABLE "TASKS"."S_TECH" (
	"TipObuch_"	"TASKS"."ТипОбуч.",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_TPCONT" (
	"KodTipaKon"	"TASKS"."КодТипаКон",
	"Nazvanie"		"TASKS"."НазвТипа",
	"SBK"			"TASKS"."СБК"
);

CREATE TABLE "TASKS"."S_TP_EXP" (
	"TipEksport"	"TASKS"."ТипЭкспорт",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_VAJN" (
	"KodVazhn_"	"TASKS"."КодВажн.",
	"Vazhnost"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_VEDOMS" (
	"KodVedomst"	"TASKS"."КодВедомст",
	"Nazvanie"		"TASKS"."Название"
);

CREATE TABLE "TASKS"."S_WORK" (
	"KodVidRab"	"TASKS"."КодВидРаб",
	"Nazvanie"		"TASKS"."Название",
	"KodStatusa"	"TASKS"."КодСтатуса"
);

CREATE TABLE "TASKS"."TAB_RTS" (
	"id_TAB_RTS"	"TASKS"."id_TAB_RTS",
	"LichnyjKod"	"TASKS"."Ответств.",
	"KodTabliczy"	"TASKS"."КодТаблицы",
	"Vvod"			"TASKS"."Ввод",
	"Izmenenie"	"TASKS"."Изменение",
	"Udalenie"		"TASKS"."Удаление",
	"KolichStrok"	"TASKS"."КоличСтрок",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."TAB_RTS"."LichnyjKod" is 'Пользователь';
COMMENT ON COLUMN "TASKS"."TAB_RTS"."KodTabliczy" is 'Таблица';
CREATE TABLE "TASKS"."TASKS" (
	"KodZadachi"	"TASKS"."КодЗадачи",
	"Tema"			"TASKS"."Тема",
	"DataVvoda"	"TASKS"."Дата",
	"VremyaVvoda"	"TASKS"."Время",
	"OtvZaVvod"	"TASKS"."КодПольз.",
	"Vvod"			"TASKS"."КодМастера",
	"OtvRealiz"	"TASKS"."КодПольз.",
	"Realizacz"	"TASKS"."КодМастера",
	"Vazhnost"		"TASKS"."КодВажн.",
	"Zatraty"		"TASKS"."Затраты",
	"Srok"			"TASKS"."Срок",
	"Sostoyanie"	"TASKS"."Состояние",
	"DataRealiz"	"TASKS"."Дата",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"VersProgr"	"TASKS"."ВерсПрогр"
);

COMMENT ON COLUMN "TASKS"."TASKS"."OtvZaVvod" is 'Ответственный за ввод';
COMMENT ON COLUMN "TASKS"."TASKS"."Vvod" is 'Ответственный за ввод';
COMMENT ON COLUMN "TASKS"."TASKS"."OtvRealiz" is 'Ответственный за реализацию';
COMMENT ON COLUMN "TASKS"."TASKS"."Realizacz" is 'Ответственный за реализацию';
COMMENT ON COLUMN "TASKS"."TASKS"."Zatraty" is 'Планируемые трудозатраты';
COMMENT ON COLUMN "TASKS"."TASKS"."DataRealiz" is 'Дата реализации';
CREATE TABLE "TASKS"."TASKSCTG" (
	"id_TASKSCT"	"TASKS"."id_TASKSCT",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"Kategoriya"	"TASKS"."Категория",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."TAS_POST" (
	"id_TAS_POS"	"TASKS"."id_TAS_POS",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"ID_punkta"	"TASKS"."ID пункта"
);

CREATE TABLE "TASKS"."TAS_PROV" (
	"KodZadachi"	"TASKS"."КодЗадачи",
	"Data"			"TASKS"."Дата",
	"Proveril"		"TASKS"."КодПольз.",
	"KodMastera"	"TASKS"."КодМастера",
	"KodRezult"	"TASKS"."КодРезульт",
	"Primechanie"	"TASKS"."Примечание",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."TAS_PROV"."KodMastera" is 'Проверил';
CREATE TABLE "TASKS"."TAS_TIME" (
	"id_TAS_TIM"	"TASKS"."id_TAS_TIM",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"Data"			"TASKS"."Дата",
	"Sotrudnik"	"TASKS"."КодПольз.",
	"KodMastera"	"TASKS"."КодМастера",
	"Zatraty"		"TASKS"."Затраты",
	"Primechanie"	"TASKS"."Примечание",
	"TextData"		"TASKS"."TextData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."TAS_TIME"."KodMastera" is 'Сотрудник';
CREATE TABLE "TASKS"."TIPAG" (
	"KodTipResh"	"TASKS"."КодТипРеш",
	"Primechanie"	"TASKS"."Примечание",
	"KodProblem"	"TASKS"."КодПроблем",
	"KodResheniya"	"TASKS"."КодРешения",
	"NeAktualn"	"TASKS"."НеАктуальн",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."TXT" (
	"KodTeksZad"	"TASKS"."КодТексЗад",
	"Rasshirenie"	"TASKS"."Расширение",
	"ImyaFajla"	"TASKS"."ИмяФайла",
	"Primechanie"	"TASKS"."Примечание",
	"BinData"		"TASKS"."BinData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

COMMENT ON COLUMN "TASKS"."TXT"."ImyaFajla" is 'Имя файла';
CREATE TABLE "TASKS"."TXT_CONT" (
	"KodTeksZaya"	"TASKS"."КодТексЗая",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"Rasshirenie"	"TASKS"."Расширение",
	"Primechanie"	"TASKS"."Примечание",
	"BinData"		"TASKS"."BinData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."TXT_IN" (
	"KodTeksVx"	"TASKS"."КодТексВх",
	"KodPismVx"	"TASKS"."КодПисьмВх",
	"Rasshirenie"	"TASKS"."Расширение",
	"Primechanie"	"TASKS"."Примечание",
	"BinData"		"TASKS"."BinData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."TXT_OUT" (
	"KodTeksIsx"	"TASKS"."КодТексИсх",
	"KodPismIs"	"TASKS"."КодПисьмИс",
	"Rasshirenie"	"TASKS"."Расширение",
	"Primechanie"	"TASKS"."Примечание",
	"BinData"		"TASKS"."BinData",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."TXT_TASK" (
	"KodTeksta"	"TASKS"."КодТекста",
	"KodZadachi"	"TASKS"."КодЗадачи",
	"KodTeksZad"	"TASKS"."КодТексЗад",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств.",
	"DataPost_"	"TASKS"."ДатаПост.",
	"VremyaPost_"	"TASKS"."ВремяПост.",
	"KtoVvel"		"TASKS"."Ответств."
);

CREATE TABLE "TASKS"."USERS" (
	"KodPolz_"		"TASKS"."КодПольз.",
	"KodMenyuObs"	"TASKS"."КодМенюОбс",
	"LichnyjKod"	"TASKS"."Ответств.",
	"ImyaPolz_"	"TASKS"."ИмяПольз.",
	"KodOtdela"	"TASKS"."КодОтдела",
	"Uroven"		"TASKS"."Уровень",
	"Login"			"TASKS"."Логин",
	"SistParol"	"TASKS"."СистПароль",
	"XeshParol"	"TASKS"."ХешПароль",
	"LichnParol"	"TASKS"."ЛичнПароль",
	"Zablokirov"	"TASKS"."Заблокиров",
	"KodMastera"	"TASKS"."КодМастера",
	"SBK"			"TASKS"."СБК",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"DataPost_"	"TASKS"."ДатаПост.",
	"KtoVvel"		"TASKS"."Ответств.",
	"Otvetstv_"	"TASKS"."Ответств.",
	"VremyaPost_"	"TASKS"."ВремяПост."
);

CREATE TABLE "TASKS"."VERSION" (
	"KodVersii"	"TASKS"."КодВерсии",
	"VersRedak"	"TASKS"."Верс\Редак",
	"Data"			"TASKS"."Дата",
	"Primechanie"	"TASKS"."Примечание"
);

CREATE TABLE "TASKS"."ZAYV_LIC" (
	"KodLiczenz"	"TASKS"."КодЛиценз",
	"KodKontakt"	"TASKS"."КодКонтакт",
	"DataZayavki"	"TASKS"."ДатаЗаявки",
	"Zayavka_ot"	"TASKS"."КодСотрудн",
	"TipProgr_"	"TASKS"."ТипПрогр.",
	"KodVersii"	"TASKS"."КодВерсии",
	"Vydana"		"TASKS"."Выдана",
	"Vydal"			"TASKS"."КодМастера",
	"DataOtprav"	"TASKS"."ДатаОтправ",
	"Primechanie"	"TASKS"."Примечание",
	"OkonchLiczen"	"TASKS"."ОкончЛицен",
	"DataIzmen_"	"TASKS"."ДатаИзмен.",
	"VremyaIzmen"	"TASKS"."ВремяИзмен",
	"Otvetstv_"	"TASKS"."Ответств."
);

CREATE INDEX ON "TASKS"."ACCOUNT" ("DataOplaty");
CREATE INDEX ON "TASKS"."ACCOUNT" ("DataScheta");
CREATE INDEX ON "TASKS"."ACCOUNT" ("KodDogovor");
CREATE INDEX ON "TASKS"."ACCOUNT" ("N_scheta");
CREATE INDEX ON "TASKS"."ACCOUNT" ("Summa");
CREATE INDEX ON "TASKS"."ACT" ("Klient");
CREATE INDEX ON "TASKS"."ACT" ("KodDogovor");
CREATE INDEX ON "TASKS"."ACT" ("Otpravlen");
CREATE INDEX ON "TASKS"."ACT" ("SummaAkta");
CREATE INDEX ON "TASKS"."ACT" ("UtvPostav_");
CREATE INDEX ON "TASKS"."ACT" ("UtvZakazch_");
CREATE INDEX ON "TASKS"."ADDRESS" ("Dom");
CREATE INDEX ON "TASKS"."ADDRESS" ("KodKlienta");
CREATE INDEX ON "TASKS"."ADDRESS" ("Kv_");
CREATE INDEX ON "TASKS"."ADDRESS" ("NaselPunkt");
CREATE INDEX ON "TASKS"."ADDRESS" ("Region");
CREATE INDEX ON "TASKS"."ADDRESS" ("Ulicza");
CREATE INDEX ON "TASKS"."ARTICLES" ("DataIzmen_");
CREATE UNIQUE INDEX ON "TASKS"."ARTICLES" ("ID_punkta");
CREATE INDEX ON "TASKS"."ARTICLES" ("Otvetstv_");
CREATE INDEX ON "TASKS"."ARTICLES" ("TextData");
CREATE INDEX ON "TASKS"."ARTICLES" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."BANC_REC" ("BIK");
CREATE INDEX ON "TASKS"."BANC_REC" ("INN");
CREATE UNIQUE INDEX ON "TASKS"."BANC_REC" ("KodKlienta");
CREATE INDEX ON "TASKS"."BANC_REC" ("Korschet");
CREATE INDEX ON "TASKS"."BANC_REC" ("OKONX");
CREATE INDEX ON "TASKS"."BANC_REC" ("OKPO");
CREATE INDEX ON "TASKS"."BANC_REC" ("Rschet");
CREATE UNIQUE INDEX ON "TASKS"."CATEGORY" ("Naimenovan");
CREATE INDEX ON "TASKS"."CERTIFIC" ("DataVydachi");
CREATE INDEX ON "TASKS"."CERTIFIC" ("KodPolz_");
CREATE INDEX ON "TASKS"."CERTIFIC" ("KodSotrudn");
CREATE UNIQUE INDEX ON "TASKS"."CERTIFIC" ("NomUdost_");
CREATE INDEX ON "TASKS"."CLIENT" ("Fond");
CREATE INDEX ON "TASKS"."CLIENT" ("KodVedomst");
CREATE UNIQUE INDEX ON "TASKS"."CLIENT" ("Organizacz_");
CREATE INDEX ON "TASKS"."CLIENT" ("Podrazd_");
CREATE UNIQUE INDEX ON "TASKS"."CNTR_PAR" ("KontrParam");
CREATE INDEX ON "TASKS"."CNTR_VID" ("KodDogovor");
CREATE INDEX ON "TASKS"."CNTR_VID" ("TipDogovor");
CREATE INDEX ON "TASKS"."CNT_PRIM" ("DataIzmen_");
CREATE UNIQUE INDEX ON "TASKS"."CNT_PRIM" ("KodKontakt");
CREATE INDEX ON "TASKS"."CNT_PRIM" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CNT_PRIM" ("TextData");
CREATE INDEX ON "TASKS"."CNT_PRIM" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CONTENTS" ("Aktualna");
CREATE INDEX ON "TASKS"."CONTENTS" ("DataIzmen_");
CREATE UNIQUE INDEX ON "TASKS"."CONTENTS" ("KodPunkta");
CREATE INDEX ON "TASKS"."CONTENTS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CONTENTS" ("SBK");
CREATE INDEX ON "TASKS"."CONTENTS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CONTRACT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CONTRACT" ("DataKoncza");
CREATE INDEX ON "TASKS"."CONTRACT" ("DataNachal_");
CREATE INDEX ON "TASKS"."CONTRACT" ("DataPost_");
CREATE INDEX ON "TASKS"."CONTRACT" ("KolRajotd");
CREATE INDEX ON "TASKS"."CONTRACT" ("KtoVvel");
CREATE UNIQUE INDEX ON "TASKS"."CONTRACT" ("NomerDokum");
CREATE INDEX ON "TASKS"."CONTRACT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CONTRACT" ("Platelshhik");
CREATE INDEX ON "TASKS"."CONTRACT" ("Region");
CREATE INDEX ON "TASKS"."CONTRACT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CONTRACT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."CONTROL" ("KodDogovor");
CREATE INDEX ON "TASKS"."CONTROL" ("KodParam");
CREATE INDEX ON "TASKS"."CONT_CTG" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CONT_CTG" ("ID_punkta");
CREATE INDEX ON "TASKS"."CONT_CTG" ("Kategoriya");
CREATE INDEX ON "TASKS"."CONT_CTG" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CONT_CTG" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CONT_TIP" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CONT_TIP" ("DataPost_");
CREATE INDEX ON "TASKS"."CONT_TIP" ("KodKontakt");
CREATE INDEX ON "TASKS"."CONT_TIP" ("KodTipResh");
CREATE INDEX ON "TASKS"."CONT_TIP" ("KtoVvel");
CREATE INDEX ON "TASKS"."CONT_TIP" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CONT_TIP" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CONT_TIP" ("VremyaPost_");
CREATE INDEX ON "TASKS"."CON_TIME" ("Data");
CREATE INDEX ON "TASKS"."CON_TIME" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CON_TIME" ("DataPost_");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodKontakt");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodMastera");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodPolz_");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodSotrudn");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodVidRab");
CREATE INDEX ON "TASKS"."CON_TIME" ("KodZadachi");
CREATE INDEX ON "TASKS"."CON_TIME" ("KtoVvel");
CREATE INDEX ON "TASKS"."CON_TIME" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CON_TIME" ("PrichOtkaza");
CREATE INDEX ON "TASKS"."CON_TIME" ("Vremya");
CREATE INDEX ON "TASKS"."CON_TIME" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CON_TIME" ("VremyaPost_");
CREATE INDEX ON "TASKS"."CON_TIME" ("Zatraty");
CREATE INDEX ON "TASKS"."CORR_IN" ("Data");
CREATE INDEX ON "TASKS"."CORR_IN" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CORR_IN" ("DataPost_");
CREATE INDEX ON "TASKS"."CORR_IN" ("Ispolnit_");
CREATE INDEX ON "TASKS"."CORR_IN" ("KodKlienta");
CREATE INDEX ON "TASKS"."CORR_IN" ("KodRabKont");
CREATE INDEX ON "TASKS"."CORR_IN" ("Komu");
CREATE INDEX ON "TASKS"."CORR_IN" ("KtoVvel");
CREATE INDEX ON "TASKS"."CORR_IN" ("N_pisma");
CREATE INDEX ON "TASKS"."CORR_IN" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CORR_IN" ("Podpis");
CREATE INDEX ON "TASKS"."CORR_IN" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CORR_IN" ("VremyaPost_");
CREATE INDEX ON "TASKS"."CORR_OUT" ("Data");
CREATE INDEX ON "TASKS"."CORR_OUT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."CORR_OUT" ("DataPost_");
CREATE INDEX ON "TASKS"."CORR_OUT" ("Ispolnit_");
CREATE INDEX ON "TASKS"."CORR_OUT" ("KodKlienta");
CREATE INDEX ON "TASKS"."CORR_OUT" ("KodMastera");
CREATE INDEX ON "TASKS"."CORR_OUT" ("KodRabKont");
CREATE INDEX ON "TASKS"."CORR_OUT" ("KodSotrudn");
CREATE INDEX ON "TASKS"."CORR_OUT" ("KtoVvel");
CREATE INDEX ON "TASKS"."CORR_OUT" ("N_pisma");
CREATE INDEX ON "TASKS"."CORR_OUT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."CORR_OUT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."CORR_OUT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."DEPENDEN" ("DataIzmen_");
CREATE INDEX ON "TASKS"."DEPENDEN" ("Otvetstv_");
CREATE INDEX ON "TASKS"."DEPENDEN" ("Posleduyushh");
CREATE INDEX ON "TASKS"."DEPENDEN" ("Predshestv");
CREATE INDEX ON "TASKS"."DEPENDEN" ("VremyaIzmen");
CREATE UNIQUE INDEX ON "TASKS"."DESCRIPT" ("KodZadachi");
CREATE INDEX ON "TASKS"."DESCRIPT" ("TextData");
CREATE INDEX ON "TASKS"."DESKMENU" ("BezObekt_");
CREATE INDEX ON "TASKS"."DESKMENU" ("DataIzmen_");
CREATE INDEX ON "TASKS"."DESKMENU" ("IndeksMenyu");
CREATE INDEX ON "TASKS"."DESKMENU" ("Izm_Otchet");
CREATE UNIQUE INDEX ON "TASKS"."DESKMENU" ("KodMenyu");
CREATE INDEX ON "TASKS"."DESKMENU" ("KodTabliczy");
CREATE INDEX ON "TASKS"."DESKMENU" ("NePokazyv_");
CREATE INDEX ON "TASKS"."DESKMENU" ("NeVybirat");
CREATE INDEX ON "TASKS"."DESKMENU" ("PoVyborke");
CREATE INDEX ON "TASKS"."DESKMENU" ("Razdel");
CREATE INDEX ON "TASKS"."DESKMENU" ("Resurs");
CREATE INDEX ON "TASKS"."DESKMENU" ("SBK");
CREATE INDEX ON "TASKS"."DESKMENU" ("Soxr_Fajl");
CREATE INDEX ON "TASKS"."DESKMENU" ("Uroven");
CREATE INDEX ON "TASKS"."DESKMENU" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."DETAILS" ("DataRaboty");
CREATE INDEX ON "TASKS"."DETAILS" ("KodMenyuObs");
CREATE INDEX ON "TASKS"."DETAILS" ("KodSeansa");
CREATE INDEX ON "TASKS"."DETAILS" ("VremyaRabot");
CREATE UNIQUE INDEX ON "TASKS"."DM_ALIAS" ("ImyaElement");
CREATE INDEX ON "TASKS"."DM_ALIAS" ("KodXran");
CREATE UNIQUE INDEX ON "TASKS"."DOC_PRIM" ("KodDogovor");
CREATE INDEX ON "TASKS"."DSKSTRG" ("DataIzmen_");
CREATE INDEX ON "TASKS"."DSKSTRG" ("KodTipRes");
CREATE INDEX ON "TASKS"."DSKSTRG" ("Otvetstv_");
CREATE INDEX ON "TASKS"."DSKSTRG" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."EXP_PRN" ("KodSeansa");
CREATE INDEX ON "TASKS"."EXP_PRN" ("TipEksport");
CREATE INDEX ON "TASKS"."EXP_PRN" ("Uspex");
CREATE INDEX ON "TASKS"."E_MAILLC" ("DataIzmen_");
CREATE INDEX ON "TASKS"."E_MAILLC" ("ImyaAdresa");
CREATE INDEX ON "TASKS"."E_MAILLC" ("KodSotrudn");
CREATE INDEX ON "TASKS"."E_MAILLC" ("KodTipa");
CREATE INDEX ON "TASKS"."E_MAILLC" ("Otvetstv_");
CREATE INDEX ON "TASKS"."E_MAILLC" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."E_MAILOR" ("DataIzmen_");
CREATE INDEX ON "TASKS"."E_MAILOR" ("ImyaAdresa");
CREATE INDEX ON "TASKS"."E_MAILOR" ("KodKlienta");
CREATE INDEX ON "TASKS"."E_MAILOR" ("KodTipa");
CREATE INDEX ON "TASKS"."E_MAILOR" ("Otvetstv_");
CREATE INDEX ON "TASKS"."E_MAILOR" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."GROUPS" ("Aktualna");
CREATE INDEX ON "TASKS"."GROUPS" ("DataPost_");
CREATE INDEX ON "TASKS"."GROUPS" ("DataVypusk");
CREATE INDEX ON "TASKS"."GROUPS" ("Nazvanie");
CREATE INDEX ON "TASKS"."GROUPS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."GROUPS" ("Srok");
CREATE INDEX ON "TASKS"."GROUPS" ("VremyaPost_");
CREATE INDEX ON "TASKS"."GROUPS" ("VysokPrior");
CREATE INDEX ON "TASKS"."GRTASKS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."GRTASKS" ("KodGruppy");
CREATE INDEX ON "TASKS"."GRTASKS" ("KodZadachi");
CREATE INDEX ON "TASKS"."GRTASKS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."GRTASKS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."HIS_STAT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."HIS_STAT" ("DataStatus");
CREATE INDEX ON "TASKS"."HIS_STAT" ("KodKontakt");
CREATE INDEX ON "TASKS"."HIS_STAT" ("KodStatusa");
CREATE INDEX ON "TASKS"."HIS_STAT" ("OtvZaStat");
CREATE INDEX ON "TASKS"."HIS_STAT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."HIS_STAT" ("VremStatus");
CREATE INDEX ON "TASKS"."HIS_STAT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."INSTRUC" ("DataIzmen_");
CREATE INDEX ON "TASKS"."INSTRUC" ("NazvPolnoe");
CREATE INDEX ON "TASKS"."INSTRUC" ("Otvetstv_");
CREATE INDEX ON "TASKS"."INSTRUC" ("TipProgr_");
CREATE INDEX ON "TASKS"."INSTRUC" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."INST_CON" ("DataIzmen_");
CREATE INDEX ON "TASKS"."INST_CON" ("KodInstr");
CREATE INDEX ON "TASKS"."INST_CON" ("KodKontakt");
CREATE INDEX ON "TASKS"."INST_CON" ("Otvetstv_");
CREATE INDEX ON "TASKS"."INST_CON" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."LAYOUTS" ("DataIzmen_");
CREATE UNIQUE INDEX ON "TASKS"."LAYOUTS" ("Layout_id");
CREATE INDEX ON "TASKS"."LAYOUTS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."LC_CONT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."LC_CONT" ("DataKontak");
CREATE INDEX ON "TASKS"."LC_CONT" ("DataPost_");
CREATE INDEX ON "TASKS"."LC_CONT" ("DataStatus");
CREATE INDEX ON "TASKS"."LC_CONT" ("Kem_prinyat");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodPeredach");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodPostupl");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodPriorit");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodSotrudn");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodStatusa");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodTipaKon");
CREATE INDEX ON "TASKS"."LC_CONT" ("KodVxIsx");
CREATE INDEX ON "TASKS"."LC_CONT" ("Komu_pered");
CREATE INDEX ON "TASKS"."LC_CONT" ("KtoVvel");
CREATE INDEX ON "TASKS"."LC_CONT" ("Motivacziya");
CREATE INDEX ON "TASKS"."LC_CONT" ("N_Reksoft");
CREATE INDEX ON "TASKS"."LC_CONT" ("OtvZaStat");
CREATE INDEX ON "TASKS"."LC_CONT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."LC_CONT" ("TipProgr_");
CREATE INDEX ON "TASKS"."LC_CONT" ("VremStatus");
CREATE INDEX ON "TASKS"."LC_CONT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."LC_CONT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."LC_CONT" ("VremyaZayavk");
CREATE INDEX ON "TASKS"."LC_TEACH" ("DataIzmen_");
CREATE INDEX ON "TASKS"."LC_TEACH" ("DataKoncza");
CREATE INDEX ON "TASKS"."LC_TEACH" ("DataNachal_");
CREATE INDEX ON "TASKS"."LC_TEACH" ("KodSotrudn");
CREATE INDEX ON "TASKS"."LC_TEACH" ("ObemCHasov");
CREATE INDEX ON "TASKS"."LC_TEACH" ("Otvetstv_");
CREATE INDEX ON "TASKS"."LC_TEACH" ("TipObuch_");
CREATE INDEX ON "TASKS"."LC_TEACH" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."LC_TEACH" ("Zachteno");
CREATE INDEX ON "TASKS"."LIC_NADD" ("DataIzmen_");
CREATE INDEX ON "TASKS"."LIC_NADD" ("DataPost_");
CREATE INDEX ON "TASKS"."LIC_NADD" ("KodKlienta");
CREATE INDEX ON "TASKS"."LIC_NADD" ("KodLiczenz");
CREATE INDEX ON "TASKS"."LIC_NADD" ("KtoVvel");
CREATE INDEX ON "TASKS"."LIC_NADD" ("Otvetstv_");
CREATE INDEX ON "TASKS"."LIC_NADD" ("Region");
CREATE INDEX ON "TASKS"."LIC_NADD" ("SetevAdres");
CREATE INDEX ON "TASKS"."LIC_NADD" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."LIC_NADD" ("VremyaPost_");
CREATE UNIQUE INDEX ON "TASKS"."MASTERS" ("Imya");
CREATE INDEX ON "TASKS"."MASTERS" ("NePokazyv_");
CREATE INDEX ON "TASKS"."MASTERS" ("NeVybirat");
CREATE INDEX ON "TASKS"."MULTIDEF" ("Nazvanie");
CREATE INDEX ON "TASKS"."MULTIDEF" ("mmFileExt");
CREATE INDEX ON "TASKS"."MULTIDEF" ("mmFileName");
CREATE UNIQUE INDEX ON "TASKS"."MULTIDEF" ("mmSubName");
CREATE INDEX ON "TASKS"."OB_BAZ" ("KodObedin");
CREATE INDEX ON "TASKS"."OB_BAZ" ("KodRajona");
CREATE INDEX ON "TASKS"."PAYMENT" ("Data");
CREATE INDEX ON "TASKS"."PAYMENT" ("N");
CREATE INDEX ON "TASKS"."PCMDS" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."PCMDS" ("SimvKomand");
CREATE INDEX ON "TASKS"."PHOTOTAB" ("KlyuchFoto");
CREATE INDEX ON "TASKS"."PHOTOTAB" ("KlyuchObekt");
CREATE UNIQUE INDEX ON "TASKS"."PHOTOTAB" ("Tab_Foto");
CREATE UNIQUE INDEX ON "TASKS"."PHOTOTAB" ("Tab_Obekt");
CREATE INDEX ON "TASKS"."PRNCMDS" ("KodKomandy");
CREATE INDEX ON "TASKS"."PRNCMDS" ("KodPrint");
CREATE INDEX ON "TASKS"."PRNS" ("ImyaPrint");
CREATE INDEX ON "TASKS"."PROBL" ("DataIzmen_");
CREATE INDEX ON "TASKS"."PROBL" ("DataPost_");
CREATE INDEX ON "TASKS"."PROBL" ("KtoVvel");
CREATE INDEX ON "TASKS"."PROBL" ("Otvetstv_");
CREATE INDEX ON "TASKS"."PROBL" ("Primechanie");
CREATE INDEX ON "TASKS"."PROBL" ("VidProblem");
CREATE INDEX ON "TASKS"."PROBL" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."PROBL" ("VremyaPost_");
CREATE INDEX ON "TASKS"."PROGRAMM" ("KodDogovor");
CREATE INDEX ON "TASKS"."PROGRAMM" ("TipProgr_");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("DataIzmen_");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("DataPost_");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("KodTipResh");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("KtoVvel");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("Otvetstv_");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("TipProgr_");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."PROJ_TIP" ("VremyaPost_");
CREATE INDEX ON "TASKS"."PR_TEACH" ("KodUdostov");
CREATE INDEX ON "TASKS"."PR_TEACH" ("TipProgr_");
CREATE INDEX ON "TASKS"."REG_KOR" ("Data");
CREATE INDEX ON "TASKS"."REG_KOR" ("DataIzmen_");
CREATE INDEX ON "TASKS"."REG_KOR" ("DataPost_");
CREATE INDEX ON "TASKS"."REG_KOR" ("KodPismIs");
CREATE INDEX ON "TASKS"."REG_KOR" ("KontrSrok");
CREATE INDEX ON "TASKS"."REG_KOR" ("KtoVvel");
CREATE INDEX ON "TASKS"."REG_KOR" ("Otvetstv_");
CREATE INDEX ON "TASKS"."REG_KOR" ("Peredano");
CREATE INDEX ON "TASKS"."REG_KOR" ("Pismo");
CREATE INDEX ON "TASKS"."REG_KOR" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."REG_KOR" ("VremyaPost_");
CREATE INDEX ON "TASKS"."REG_KOR" ("Vxodyashhij");
CREATE INDEX ON "TASKS"."REG_KOUT" ("Data");
CREATE INDEX ON "TASKS"."REG_KOUT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."REG_KOUT" ("DataPost_");
CREATE INDEX ON "TASKS"."REG_KOUT" ("Isxodyashhij");
CREATE INDEX ON "TASKS"."REG_KOUT" ("KtoVvel");
CREATE INDEX ON "TASKS"."REG_KOUT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."REG_KOUT" ("Pismo");
CREATE INDEX ON "TASKS"."REG_KOUT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."REG_KOUT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."REKSOFT" ("KodRabKont");
CREATE INDEX ON "TASKS"."REKSOFT" ("KodTochnost");
CREATE INDEX ON "TASKS"."REKSOFT" ("Ochered");
CREATE INDEX ON "TASKS"."REKSOFT" ("Oczenka");
CREATE INDEX ON "TASKS"."RESCH" ("DataIzmen_");
CREATE INDEX ON "TASKS"."RESCH" ("DataPost_");
CREATE INDEX ON "TASKS"."RESCH" ("KtoVvel");
CREATE INDEX ON "TASKS"."RESCH" ("Otvetstv_");
CREATE INDEX ON "TASKS"."RESCH" ("Primechanie");
CREATE INDEX ON "TASKS"."RESCH" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."RESCH" ("VremyaPost_");
CREATE INDEX ON "TASKS"."RIGHTS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."RIGHTS" ("IzmenLichn");
CREATE INDEX ON "TASKS"."RIGHTS" ("Izmenenie");
CREATE INDEX ON "TASKS"."RIGHTS" ("KodMenyuObs");
CREATE INDEX ON "TASKS"."RIGHTS" ("LichnyjKod");
CREATE INDEX ON "TASKS"."RIGHTS" ("Ogranichen_");
CREATE INDEX ON "TASKS"."RIGHTS" ("OtchetyOkna");
CREATE INDEX ON "TASKS"."RIGHTS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."RIGHTS" ("Prosmotr");
CREATE INDEX ON "TASKS"."RIGHTS" ("Sliyanie");
CREATE INDEX ON "TASKS"."RIGHTS" ("UdalLichn");
CREATE INDEX ON "TASKS"."RIGHTS" ("Udalenie");
CREATE INDEX ON "TASKS"."RIGHTS" ("Vizualiz_");
CREATE INDEX ON "TASKS"."RIGHTS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."RIGHTS" ("Vvod");
CREATE INDEX ON "TASKS"."RIGHTS" ("Vyborki");
CREATE INDEX ON "TASKS"."RJ_LICO" ("DataAktual");
CREATE INDEX ON "TASKS"."RJ_LICO" ("DataIzmen_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("DataUvoln");
CREATE INDEX ON "TASKS"."RJ_LICO" ("FIO");
CREATE INDEX ON "TASKS"."RJ_LICO" ("KodRajona");
CREATE INDEX ON "TASKS"."RJ_LICO" ("NePokazyv_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("NeVybirat");
CREATE INDEX ON "TASKS"."RJ_LICO" ("Organizacz_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("Otvetstv_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("Telefon");
CREATE INDEX ON "TASKS"."RJ_LICO" ("TipSotrud_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("UrovGram_");
CREATE INDEX ON "TASKS"."RJ_LICO" ("VremyaIzmen");
CREATE UNIQUE INDEX ON "TASKS"."RJ_PRIM" ("KodOrganiz");
CREATE INDEX ON "TASKS"."SEANS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."SEANS" ("DataVxoda");
CREATE INDEX ON "TASKS"."SEANS" ("DataVyxoda");
CREATE INDEX ON "TASKS"."SEANS" ("KodStanczii");
CREATE INDEX ON "TASKS"."SEANS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."SEANS" ("Problemn_");
CREATE INDEX ON "TASKS"."SEANS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."SEANS" ("VremyaVxoda");
CREATE INDEX ON "TASKS"."SEANS" ("VremyaVyxod");
CREATE UNIQUE INDEX ON "TASKS"."SETTINGS" ("KlyuchNastr");
CREATE INDEX ON "TASKS"."SETTINGS" ("ZnachTekst");
CREATE INDEX ON "TASKS"."SLOVO3" ("CODE");
CREATE INDEX ON "TASKS"."SLOVO3" ("KodGosva");
CREATE INDEX ON "TASKS"."SLOVO3" ("NazvGICZ");
CREATE UNIQUE INDEX ON "TASKS"."SLOVO3" ("NazvOblast");
CREATE UNIQUE INDEX ON "TASKS"."SLV_CLN" ("IDC");
CREATE INDEX ON "TASKS"."SLV_CLN" ("KodTabliczy");
CREATE INDEX ON "TASKS"."SLV_CLN" ("Obekty");
CREATE INDEX ON "TASKS"."SLV_CLN" ("Pole");
CREATE INDEX ON "TASKS"."SLV_CLN" ("Poryadok");
CREATE INDEX ON "TASKS"."SLV_CLN" ("Slovar");
CREATE INDEX ON "TASKS"."SLV_CLN" ("Spisok");
CREATE INDEX ON "TASKS"."SPR038" ("Grazhd_");
CREATE INDEX ON "TASKS"."SPR038" ("LiniyaSluzh_");
CREATE UNIQUE INDEX ON "TASKS"."SPR038" ("NazvPodr_");
CREATE INDEX ON "TASKS"."SPR038" ("NePokazyv_");
CREATE INDEX ON "TASKS"."SPR038" ("Sobyt");
CREATE INDEX ON "TASKS"."STATE" ("Aktualna");
CREATE UNIQUE INDEX ON "TASKS"."STATE" ("Naimenovan");
CREATE UNIQUE INDEX ON "TASKS"."STATIONS" ("ImyaStanczii");
CREATE INDEX ON "TASKS"."STATIONS" ("Uroven");
CREATE INDEX ON "TASKS"."SU_PROGR" ("KodVedomst");
CREATE UNIQUE INDEX ON "TASKS"."SU_PROGR" ("NazvProgr_");
CREATE INDEX ON "TASKS"."SU_PROGR" ("NePokazyv_");
CREATE INDEX ON "TASKS"."SU_PROGR" ("NeVybirat");
CREATE INDEX ON "TASKS"."SU_RAJ" ("NazvRajona");
CREATE INDEX ON "TASKS"."SU_RAJ" ("Region");
CREATE UNIQUE INDEX ON "TASKS"."S_CONT" ("Nazvanie");
CREATE INDEX ON "TASKS"."S_FILETP" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_FILETP" ("Rasshirenie");
CREATE UNIQUE INDEX ON "TASKS"."S_GRAM" ("Gramotn_");
CREATE UNIQUE INDEX ON "TASKS"."S_IN_OUT" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_LIC" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_MAIL" ("TipAdresa");
CREATE UNIQUE INDEX ON "TASKS"."S_NAS_P" ("NaselPunkt");
CREATE UNIQUE INDEX ON "TASKS"."S_OBL" ("Nazvanie");
CREATE INDEX ON "TASKS"."S_OBL" ("NePokazyv_");
CREATE UNIQUE INDEX ON "TASKS"."S_OCENK" ("Tochnost");
CREATE INDEX ON "TASKS"."S_ORG_M1" ("KodCZBDUIG");
CREATE INDEX ON "TASKS"."S_ORG_M1" ("KodOblasti");
CREATE INDEX ON "TASKS"."S_ORG_M1" ("KodPodrazd");
CREATE UNIQUE INDEX ON "TASKS"."S_OTDEL" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_POSTUP" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_PRIOR" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_PROBL" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_REGSOF" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_STATUS" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_STRGTP" ("Naimenovan");
CREATE INDEX ON "TASKS"."S_TABLES" ("KontrKlyuch");
CREATE UNIQUE INDEX ON "TASKS"."S_TABLES" ("Nazvanie");
CREATE INDEX ON "TASKS"."S_TABLES" ("NeProtokol");
CREATE UNIQUE INDEX ON "TASKS"."S_TABLES" ("Tablicza");
CREATE INDEX ON "TASKS"."S_TABLES" ("Uroven");
CREATE UNIQUE INDEX ON "TASKS"."S_TECH" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_TPCONT" ("Nazvanie");
CREATE INDEX ON "TASKS"."S_TPCONT" ("SBK");
CREATE UNIQUE INDEX ON "TASKS"."S_TP_EXP" ("Nazvanie");
CREATE UNIQUE INDEX ON "TASKS"."S_VAJN" ("Vazhnost");
CREATE UNIQUE INDEX ON "TASKS"."S_VEDOMS" ("Nazvanie");
CREATE INDEX ON "TASKS"."S_WORK" ("KodStatusa");
CREATE UNIQUE INDEX ON "TASKS"."S_WORK" ("Nazvanie");
CREATE INDEX ON "TASKS"."TAB_RTS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TAB_RTS" ("Izmenenie");
CREATE INDEX ON "TASKS"."TAB_RTS" ("KodTabliczy");
CREATE INDEX ON "TASKS"."TAB_RTS" ("KolichStrok");
CREATE INDEX ON "TASKS"."TAB_RTS" ("LichnyjKod");
CREATE INDEX ON "TASKS"."TAB_RTS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TAB_RTS" ("Udalenie");
CREATE INDEX ON "TASKS"."TAB_RTS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TAB_RTS" ("Vvod");
CREATE INDEX ON "TASKS"."TASKS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TASKS" ("DataPost_");
CREATE INDEX ON "TASKS"."TASKS" ("DataRealiz");
CREATE INDEX ON "TASKS"."TASKS" ("DataVvoda");
CREATE INDEX ON "TASKS"."TASKS" ("KtoVvel");
CREATE INDEX ON "TASKS"."TASKS" ("OtvRealiz");
CREATE INDEX ON "TASKS"."TASKS" ("OtvZaVvod");
CREATE INDEX ON "TASKS"."TASKS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TASKS" ("Realizacz");
CREATE INDEX ON "TASKS"."TASKS" ("Sostoyanie");
CREATE INDEX ON "TASKS"."TASKS" ("Srok");
CREATE INDEX ON "TASKS"."TASKS" ("Tema");
CREATE INDEX ON "TASKS"."TASKS" ("Vazhnost");
CREATE INDEX ON "TASKS"."TASKS" ("VersProgr");
CREATE INDEX ON "TASKS"."TASKS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TASKS" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TASKS" ("VremyaVvoda");
CREATE INDEX ON "TASKS"."TASKS" ("Vvod");
CREATE INDEX ON "TASKS"."TASKS" ("Zatraty");
CREATE INDEX ON "TASKS"."TASKSCTG" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TASKSCTG" ("Kategoriya");
CREATE INDEX ON "TASKS"."TASKSCTG" ("KodZadachi");
CREATE INDEX ON "TASKS"."TASKSCTG" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TASKSCTG" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TAS_POST" ("ID_punkta");
CREATE INDEX ON "TASKS"."TAS_POST" ("KodZadachi");
CREATE INDEX ON "TASKS"."TAS_PROV" ("Data");
CREATE INDEX ON "TASKS"."TAS_PROV" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TAS_PROV" ("DataPost_");
CREATE INDEX ON "TASKS"."TAS_PROV" ("KodMastera");
CREATE INDEX ON "TASKS"."TAS_PROV" ("KodRezult");
CREATE UNIQUE INDEX ON "TASKS"."TAS_PROV" ("KodZadachi");
CREATE INDEX ON "TASKS"."TAS_PROV" ("KtoVvel");
CREATE INDEX ON "TASKS"."TAS_PROV" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TAS_PROV" ("Proveril");
CREATE INDEX ON "TASKS"."TAS_PROV" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TAS_PROV" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TAS_TIME" ("Data");
CREATE INDEX ON "TASKS"."TAS_TIME" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TAS_TIME" ("KodMastera");
CREATE INDEX ON "TASKS"."TAS_TIME" ("KodZadachi");
CREATE INDEX ON "TASKS"."TAS_TIME" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TAS_TIME" ("Sotrudnik");
CREATE INDEX ON "TASKS"."TAS_TIME" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TAS_TIME" ("Zatraty");
CREATE INDEX ON "TASKS"."TIPAG" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TIPAG" ("DataPost_");
CREATE INDEX ON "TASKS"."TIPAG" ("KodProblem");
CREATE INDEX ON "TASKS"."TIPAG" ("KodResheniya");
CREATE INDEX ON "TASKS"."TIPAG" ("KtoVvel");
CREATE INDEX ON "TASKS"."TIPAG" ("NeAktualn");
CREATE INDEX ON "TASKS"."TIPAG" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TIPAG" ("Primechanie");
CREATE INDEX ON "TASKS"."TIPAG" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TIPAG" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TXT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TXT" ("DataPost_");
CREATE INDEX ON "TASKS"."TXT" ("KtoVvel");
CREATE INDEX ON "TASKS"."TXT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TXT" ("Rasshirenie");
CREATE INDEX ON "TASKS"."TXT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TXT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TXT_CONT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TXT_CONT" ("DataPost_");
CREATE INDEX ON "TASKS"."TXT_CONT" ("KodKontakt");
CREATE INDEX ON "TASKS"."TXT_CONT" ("KtoVvel");
CREATE INDEX ON "TASKS"."TXT_CONT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TXT_CONT" ("Rasshirenie");
CREATE INDEX ON "TASKS"."TXT_CONT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TXT_CONT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TXT_IN" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TXT_IN" ("DataPost_");
CREATE INDEX ON "TASKS"."TXT_IN" ("KodPismVx");
CREATE INDEX ON "TASKS"."TXT_IN" ("KtoVvel");
CREATE INDEX ON "TASKS"."TXT_IN" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TXT_IN" ("Rasshirenie");
CREATE INDEX ON "TASKS"."TXT_IN" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TXT_IN" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TXT_OUT" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TXT_OUT" ("DataPost_");
CREATE INDEX ON "TASKS"."TXT_OUT" ("KodPismIs");
CREATE INDEX ON "TASKS"."TXT_OUT" ("KtoVvel");
CREATE INDEX ON "TASKS"."TXT_OUT" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TXT_OUT" ("Rasshirenie");
CREATE INDEX ON "TASKS"."TXT_OUT" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TXT_OUT" ("VremyaPost_");
CREATE INDEX ON "TASKS"."TXT_TASK" ("DataIzmen_");
CREATE INDEX ON "TASKS"."TXT_TASK" ("DataPost_");
CREATE INDEX ON "TASKS"."TXT_TASK" ("KodTeksZad");
CREATE INDEX ON "TASKS"."TXT_TASK" ("KodZadachi");
CREATE INDEX ON "TASKS"."TXT_TASK" ("KtoVvel");
CREATE INDEX ON "TASKS"."TXT_TASK" ("Otvetstv_");
CREATE INDEX ON "TASKS"."TXT_TASK" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."TXT_TASK" ("VremyaPost_");
CREATE INDEX ON "TASKS"."USERS" ("DataIzmen_");
CREATE INDEX ON "TASKS"."USERS" ("DataPost_");
CREATE INDEX ON "TASKS"."USERS" ("ImyaPolz_");
CREATE INDEX ON "TASKS"."USERS" ("KodMastera");
CREATE INDEX ON "TASKS"."USERS" ("KodMenyuObs");
CREATE INDEX ON "TASKS"."USERS" ("KodOtdela");
CREATE INDEX ON "TASKS"."USERS" ("KodPolz_");
CREATE INDEX ON "TASKS"."USERS" ("KtoVvel");
CREATE INDEX ON "TASKS"."USERS" ("LichnParol");
CREATE UNIQUE INDEX ON "TASKS"."USERS" ("Login");
CREATE INDEX ON "TASKS"."USERS" ("Otvetstv_");
CREATE INDEX ON "TASKS"."USERS" ("SBK");
CREATE INDEX ON "TASKS"."USERS" ("SistParol");
CREATE INDEX ON "TASKS"."USERS" ("Uroven");
CREATE INDEX ON "TASKS"."USERS" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."USERS" ("VremyaPost_");
CREATE INDEX ON "TASKS"."USERS" ("XeshParol");
CREATE INDEX ON "TASKS"."USERS" ("Zablokirov");
CREATE INDEX ON "TASKS"."VERSION" ("Data");
CREATE INDEX ON "TASKS"."VERSION" ("Primechanie");
CREATE INDEX ON "TASKS"."VERSION" ("VersRedak");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("DataIzmen_");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("DataOtprav");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("DataZayavki");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("KodKontakt");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("KodVersii");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("Otvetstv_");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("TipProgr_");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("VremyaIzmen");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("Vydal");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("Vydana");
CREATE INDEX ON "TASKS"."ZAYV_LIC" ("Zayavka_ot");


ALTER TABLE "TASKS"."ACCOUNT" ADD PRIMARY KEY("id_ACC") ;
ALTER TABLE "TASKS"."ACT" ADD PRIMARY KEY("id_ACT") ;
ALTER TABLE "TASKS"."ADDRESS" ADD PRIMARY KEY("KodAdresa") ;
ALTER TABLE "TASKS"."ARTICLES" ADD PRIMARY KEY("ID_stati") ;
ALTER TABLE "TASKS"."CATEGORY" ADD PRIMARY KEY("Kategoriya") ;
ALTER TABLE "TASKS"."CERTIFIC" ADD PRIMARY KEY("KodUdostov") ;
ALTER TABLE "TASKS"."CHAP_REF" ADD PRIMARY KEY("Razdel") ;
ALTER TABLE "TASKS"."CLIENT" ADD PRIMARY KEY("KodKlienta") ;
ALTER TABLE "TASKS"."CNTR_PAR" ADD PRIMARY KEY("KodParam") ;
ALTER TABLE "TASKS"."CNTR_VID" ADD PRIMARY KEY("id_CNTR_V") ;
ALTER TABLE "TASKS"."CONTENTS" ADD PRIMARY KEY("ID_punkta") ;
ALTER TABLE "TASKS"."CONTRACT" ADD PRIMARY KEY("KodDogovor") ;
ALTER TABLE "TASKS"."CONTROL" ADD PRIMARY KEY("id_CONTROL") ;
ALTER TABLE "TASKS"."CONT_CTG" ADD PRIMARY KEY("id_CONT_C") ;
ALTER TABLE "TASKS"."CONT_TIP" ADD PRIMARY KEY("id_CONT_T") ;
ALTER TABLE "TASKS"."CON_TIME" ADD PRIMARY KEY("KodRabKont") ;
ALTER TABLE "TASKS"."CORR_IN" ADD PRIMARY KEY("KodPismVx") ;
ALTER TABLE "TASKS"."CORR_OUT" ADD PRIMARY KEY("KodPismIs") ;
ALTER TABLE "TASKS"."DEPENDEN" ADD PRIMARY KEY("id_DEPEND") ;
ALTER TABLE "TASKS"."DESCRIPT" ADD PRIMARY KEY("ID_descr") ;
ALTER TABLE "TASKS"."DESKMENU" ADD PRIMARY KEY("KodMenyuObs") ;
ALTER TABLE "TASKS"."DETAILS" ADD PRIMARY KEY("id_DETAILS") ;
ALTER TABLE "TASKS"."DM_ALIAS" ADD PRIMARY KEY("KodImElXr") ;
ALTER TABLE "TASKS"."DSKSTRG" ADD PRIMARY KEY("KodXran") ;
ALTER TABLE "TASKS"."EXP_PRN" ADD PRIMARY KEY("KodEksport") ;
ALTER TABLE "TASKS"."E_MAILLC" ADD PRIMARY KEY("KodElAdres") ;
ALTER TABLE "TASKS"."E_MAILOR" ADD PRIMARY KEY("KodElAdres") ;
ALTER TABLE "TASKS"."GROUPS" ADD PRIMARY KEY("KodGruppy") ;
ALTER TABLE "TASKS"."GRTASKS" ADD PRIMARY KEY("id_GRTASKS") ;
ALTER TABLE "TASKS"."HIS_STAT" ADD PRIMARY KEY("KodIstorii") ;
ALTER TABLE "TASKS"."INSTRUC" ADD PRIMARY KEY("KodInstr") ;
ALTER TABLE "TASKS"."INST_CON" ADD PRIMARY KEY("id_INST_C") ;
ALTER TABLE "TASKS"."LC_CONT" ADD PRIMARY KEY("KodKontakt") ;
ALTER TABLE "TASKS"."LC_TEACH" ADD PRIMARY KEY("id_LC_TEAC") ;
ALTER TABLE "TASKS"."LIC_NADD" ADD PRIMARY KEY("KodDopLicz") ;
ALTER TABLE "TASKS"."MASTERS" ADD PRIMARY KEY("KodMastera") ;
ALTER TABLE "TASKS"."MENUITEM" ADD PRIMARY KEY("IndeksMenyu") ;
ALTER TABLE "TASKS"."MULTIDEF" ADD PRIMARY KEY("KodMulti") ;
ALTER TABLE "TASKS"."OB_BAZ" ADD PRIMARY KEY("id_OB_BAZ") ;
ALTER TABLE "TASKS"."PAYMENT" ADD PRIMARY KEY("KodPlPor") ;
ALTER TABLE "TASKS"."PCMDS" ADD PRIMARY KEY("KodKomandy") ;
ALTER TABLE "TASKS"."PHOTOTAB" ADD PRIMARY KEY("id_PHOTOT") ;
ALTER TABLE "TASKS"."PRNCMDS" ADD PRIMARY KEY("id_PRNCMDS") ;
ALTER TABLE "TASKS"."PRNS" ADD PRIMARY KEY("KodPrint") ;
ALTER TABLE "TASKS"."PROBL" ADD PRIMARY KEY("KodProblem") ;
ALTER TABLE "TASKS"."PROGRAMM" ADD PRIMARY KEY("id_PROGRAM") ;
ALTER TABLE "TASKS"."PROJ_TIP" ADD PRIMARY KEY("id_PROJ_T") ;
ALTER TABLE "TASKS"."PR_TEACH" ADD PRIMARY KEY("id_PR_TEAC") ;
ALTER TABLE "TASKS"."REG_KOR" ADD PRIMARY KEY("KodZHurnVx") ;
ALTER TABLE "TASKS"."REG_KOUT" ADD PRIMARY KEY("KodZHurnIsx") ;
ALTER TABLE "TASKS"."REKSOFT" ADD PRIMARY KEY("KodReksoft") ;
ALTER TABLE "TASKS"."RESCH" ADD PRIMARY KEY("KodResheniya") ;
ALTER TABLE "TASKS"."RIGHTS" ADD PRIMARY KEY("id_RIGHTS") ;
ALTER TABLE "TASKS"."RJ_LICO" ADD PRIMARY KEY("KodSotrudn") ;
ALTER TABLE "TASKS"."SEANS" ADD PRIMARY KEY("KodSeansa") ;
ALTER TABLE "TASKS"."SLOVO3" ADD PRIMARY KEY("KodOblasti") ;
ALTER TABLE "TASKS"."SPR038" ADD PRIMARY KEY("KodPodrazd") ;
ALTER TABLE "TASKS"."STATE" ADD PRIMARY KEY("Sostoyanie") ;
ALTER TABLE "TASKS"."STATIONS" ADD PRIMARY KEY("KodStanczii") ;
ALTER TABLE "TASKS"."SU_PROGR" ADD PRIMARY KEY("TipProgr_") ;
ALTER TABLE "TASKS"."SU_RAJ" ADD PRIMARY KEY("KodRajona") ;
ALTER TABLE "TASKS"."S_CONT" ADD PRIMARY KEY("TipKontakt") ;
ALTER TABLE "TASKS"."S_DOG" ADD PRIMARY KEY("TipDogovor") ;
ALTER TABLE "TASKS"."S_FILETP" ADD PRIMARY KEY("Tip_fajla") ;
ALTER TABLE "TASKS"."S_GRAM" ADD PRIMARY KEY("UrovGram_") ;
ALTER TABLE "TASKS"."S_IN_OUT" ADD PRIMARY KEY("KodVxIsx") ;
ALTER TABLE "TASKS"."S_LIC" ADD PRIMARY KEY("TipSotrud_") ;
ALTER TABLE "TASKS"."S_MAIL" ADD PRIMARY KEY("KodTipa") ;
ALTER TABLE "TASKS"."S_NAS_P" ADD PRIMARY KEY("KodNasPunk") ;
ALTER TABLE "TASKS"."S_OBBAZ" ADD PRIMARY KEY("KodObedin") ;
ALTER TABLE "TASKS"."S_OBL" ADD PRIMARY KEY("Region") ;
ALTER TABLE "TASKS"."S_OCENK" ADD PRIMARY KEY("KodTochnost") ;
ALTER TABLE "TASKS"."S_ORG_M1" ADD PRIMARY KEY("KodOrgM1") ;
ALTER TABLE "TASKS"."S_OTDEL" ADD PRIMARY KEY("KodOtdela") ;
ALTER TABLE "TASKS"."S_POSTUP" ADD PRIMARY KEY("KodPostupl") ;
ALTER TABLE "TASKS"."S_PRIOR" ADD PRIMARY KEY("KodPriorit") ;
ALTER TABLE "TASKS"."S_PROBL" ADD PRIMARY KEY("VidProblem") ;
ALTER TABLE "TASKS"."S_PROVER" ADD PRIMARY KEY("KodRezult") ;
ALTER TABLE "TASKS"."S_REGSOF" ADD PRIMARY KEY("KodPeredach") ;
ALTER TABLE "TASKS"."S_STATUS" ADD PRIMARY KEY("KodStatusa") ;
ALTER TABLE "TASKS"."S_STRGTP" ADD PRIMARY KEY("KodTipRes") ;
ALTER TABLE "TASKS"."S_TABLES" ADD PRIMARY KEY("KodTabliczy") ;
ALTER TABLE "TASKS"."S_TECH" ADD PRIMARY KEY("TipObuch_") ;
ALTER TABLE "TASKS"."S_TPCONT" ADD PRIMARY KEY("KodTipaKon") ;
ALTER TABLE "TASKS"."S_TP_EXP" ADD PRIMARY KEY("TipEksport") ;
ALTER TABLE "TASKS"."S_VAJN" ADD PRIMARY KEY("KodVazhn_") ;
ALTER TABLE "TASKS"."S_VEDOMS" ADD PRIMARY KEY("KodVedomst") ;
ALTER TABLE "TASKS"."S_WORK" ADD PRIMARY KEY("KodVidRab") ;
ALTER TABLE "TASKS"."TAB_RTS" ADD PRIMARY KEY("id_TAB_RTS") ;
ALTER TABLE "TASKS"."TASKS" ADD PRIMARY KEY("KodZadachi") ;
ALTER TABLE "TASKS"."TASKSCTG" ADD PRIMARY KEY("id_TASKSCT") ;
ALTER TABLE "TASKS"."TAS_POST" ADD PRIMARY KEY("id_TAS_POS") ;
ALTER TABLE "TASKS"."TAS_TIME" ADD PRIMARY KEY("id_TAS_TIM") ;
ALTER TABLE "TASKS"."TIPAG" ADD PRIMARY KEY("KodTipResh") ;
ALTER TABLE "TASKS"."TXT" ADD PRIMARY KEY("KodTeksZad") ;
ALTER TABLE "TASKS"."TXT_CONT" ADD PRIMARY KEY("KodTeksZaya") ;
ALTER TABLE "TASKS"."TXT_IN" ADD PRIMARY KEY("KodTeksVx") ;
ALTER TABLE "TASKS"."TXT_OUT" ADD PRIMARY KEY("KodTeksIsx") ;
ALTER TABLE "TASKS"."TXT_TASK" ADD PRIMARY KEY("KodTeksta") ;
ALTER TABLE "TASKS"."USERS" ADD PRIMARY KEY("LichnyjKod") ;
ALTER TABLE "TASKS"."VERSION" ADD PRIMARY KEY("KodVersii") ;
ALTER TABLE "TASKS"."ZAYV_LIC" ADD PRIMARY KEY("KodLiczenz") ;

ALTER TABLE "TASKS"."ACCOUNT" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."ACT" ADD FOREIGN KEY("Klient") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."ACT" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."ADDRESS" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."ADDRESS" ADD FOREIGN KEY("NaselPunkt") REFERENCES "TASKS"."S_NAS_P"("KodNasPunk");
ALTER TABLE "TASKS"."ADDRESS" ADD FOREIGN KEY("Region") REFERENCES "TASKS"."S_OBL"("Region");
ALTER TABLE "TASKS"."ARTICLES" ADD FOREIGN KEY("ID_punkta") REFERENCES "TASKS"."CONTENTS"("ID_punkta") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."ARTICLES" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."BANC_REC" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."CERTIFIC" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."CLIENT" ADD FOREIGN KEY("KodVedomst") REFERENCES "TASKS"."S_VEDOMS"("KodVedomst");
ALTER TABLE "TASKS"."CNTR_VID" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."CNTR_VID" ADD FOREIGN KEY("TipDogovor") REFERENCES "TASKS"."S_DOG"("TipDogovor");
ALTER TABLE "TASKS"."CNT_PRIM" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt");
ALTER TABLE "TASKS"."CNT_PRIM" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONTENTS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONTRACT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONTRACT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONTRACT" ADD FOREIGN KEY("Platelshhik") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."CONTRACT" ADD FOREIGN KEY("Region") REFERENCES "TASKS"."S_OBL"("Region");
ALTER TABLE "TASKS"."CONTROL" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."CONTROL" ADD FOREIGN KEY("KodParam") REFERENCES "TASKS"."CNTR_PAR"("KodParam");
ALTER TABLE "TASKS"."CONT_CTG" ADD FOREIGN KEY("ID_punkta") REFERENCES "TASKS"."CONTENTS"("ID_punkta");
ALTER TABLE "TASKS"."CONT_CTG" ADD FOREIGN KEY("Kategoriya") REFERENCES "TASKS"."CATEGORY"("Kategoriya");
ALTER TABLE "TASKS"."CONT_CTG" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONT_TIP" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."CONT_TIP" ADD FOREIGN KEY("KodTipResh") REFERENCES "TASKS"."TIPAG"("KodTipResh") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."CONT_TIP" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CONT_TIP" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KodMastera") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KodVidRab") REFERENCES "TASKS"."S_WORK"("KodVidRab");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CON_TIME" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("Ispolnit_") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("KodRabKont") REFERENCES "TASKS"."CON_TIME"("KodRabKont");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("Komu") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CORR_IN" ADD FOREIGN KEY("Podpis") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("Ispolnit_") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("KodMastera") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("KodRabKont") REFERENCES "TASKS"."CON_TIME"("KodRabKont");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."CORR_OUT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."DEPENDEN" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."DEPENDEN" ADD FOREIGN KEY("Posleduyushh") REFERENCES "TASKS"."TASKS"("KodZadachi");
ALTER TABLE "TASKS"."DEPENDEN" ADD FOREIGN KEY("Predshestv") REFERENCES "TASKS"."TASKS"("KodZadachi");
ALTER TABLE "TASKS"."DESCRIPT" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."DESKMENU" ADD FOREIGN KEY("IndeksMenyu") REFERENCES "TASKS"."MENUITEM"("IndeksMenyu");
ALTER TABLE "TASKS"."DESKMENU" ADD FOREIGN KEY("KodTabliczy") REFERENCES "TASKS"."S_TABLES"("KodTabliczy");
ALTER TABLE "TASKS"."DESKMENU" ADD FOREIGN KEY("Razdel") REFERENCES "TASKS"."CHAP_REF"("Razdel");
ALTER TABLE "TASKS"."DESKMENU" ADD FOREIGN KEY("Resurs") REFERENCES "TASKS"."DSKSTRG"("KodXran");
ALTER TABLE "TASKS"."DETAILS" ADD FOREIGN KEY("KodMenyuObs") REFERENCES "TASKS"."DESKMENU"("KodMenyuObs");
ALTER TABLE "TASKS"."DETAILS" ADD FOREIGN KEY("KodSeansa") REFERENCES "TASKS"."SEANS"("KodSeansa");
ALTER TABLE "TASKS"."DM_ALIAS" ADD FOREIGN KEY("KodXran") REFERENCES "TASKS"."DSKSTRG"("KodXran");
ALTER TABLE "TASKS"."DOC_PRIM" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."DSKSTRG" ADD FOREIGN KEY("KodTipRes") REFERENCES "TASKS"."S_STRGTP"("KodTipRes");
ALTER TABLE "TASKS"."DSKSTRG" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."EXP_PRN" ADD FOREIGN KEY("KodSeansa") REFERENCES "TASKS"."SEANS"("KodSeansa");
ALTER TABLE "TASKS"."EXP_PRN" ADD FOREIGN KEY("TipEksport") REFERENCES "TASKS"."S_TP_EXP"("TipEksport");
ALTER TABLE "TASKS"."E_MAILLC" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."E_MAILLC" ADD FOREIGN KEY("KodTipa") REFERENCES "TASKS"."S_MAIL"("KodTipa");
ALTER TABLE "TASKS"."E_MAILLC" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."E_MAILOR" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."E_MAILOR" ADD FOREIGN KEY("KodTipa") REFERENCES "TASKS"."S_MAIL"("KodTipa");
ALTER TABLE "TASKS"."E_MAILOR" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."GROUPS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."GRTASKS" ADD FOREIGN KEY("KodGruppy") REFERENCES "TASKS"."GROUPS"("KodGruppy") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."GRTASKS" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."GRTASKS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."HIS_STAT" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt");
ALTER TABLE "TASKS"."HIS_STAT" ADD FOREIGN KEY("KodStatusa") REFERENCES "TASKS"."S_STATUS"("KodStatusa");
ALTER TABLE "TASKS"."HIS_STAT" ADD FOREIGN KEY("OtvZaStat") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."HIS_STAT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."INSTRUC" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."INSTRUC" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_");
ALTER TABLE "TASKS"."INST_CON" ADD FOREIGN KEY("KodInstr") REFERENCES "TASKS"."INSTRUC"("KodInstr");
ALTER TABLE "TASKS"."INST_CON" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."INST_CON" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("Kem_prinyat") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodPeredach") REFERENCES "TASKS"."S_REGSOF"("KodPeredach");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodPostupl") REFERENCES "TASKS"."S_POSTUP"("KodPostupl");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodPriorit") REFERENCES "TASKS"."S_PRIOR"("KodPriorit");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodStatusa") REFERENCES "TASKS"."S_STATUS"("KodStatusa");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodTipaKon") REFERENCES "TASKS"."S_TPCONT"("KodTipaKon");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KodVxIsx") REFERENCES "TASKS"."S_IN_OUT"("KodVxIsx");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("Komu_pered") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("OtvZaStat") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LC_CONT" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_");
ALTER TABLE "TASKS"."LC_TEACH" ADD FOREIGN KEY("KodSotrudn") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
ALTER TABLE "TASKS"."LC_TEACH" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LC_TEACH" ADD FOREIGN KEY("TipObuch_") REFERENCES "TASKS"."S_TECH"("TipObuch_");
ALTER TABLE "TASKS"."LIC_NADD" ADD FOREIGN KEY("KodKlienta") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."LIC_NADD" ADD FOREIGN KEY("KodLiczenz") REFERENCES "TASKS"."ZAYV_LIC"("KodLiczenz");
ALTER TABLE "TASKS"."LIC_NADD" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LIC_NADD" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."LIC_NADD" ADD FOREIGN KEY("Region") REFERENCES "TASKS"."S_OBL"("Region");
ALTER TABLE "TASKS"."OB_BAZ" ADD FOREIGN KEY("KodObedin") REFERENCES "TASKS"."S_OBBAZ"("KodObedin");
ALTER TABLE "TASKS"."OB_BAZ" ADD FOREIGN KEY("KodRajona") REFERENCES "TASKS"."SU_RAJ"("KodRajona");
ALTER TABLE "TASKS"."PRNCMDS" ADD FOREIGN KEY("KodKomandy") REFERENCES "TASKS"."PCMDS"("KodKomandy");
ALTER TABLE "TASKS"."PRNCMDS" ADD FOREIGN KEY("KodPrint") REFERENCES "TASKS"."PRNS"("KodPrint");
ALTER TABLE "TASKS"."PROBL" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."PROBL" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."PROBL" ADD FOREIGN KEY("VidProblem") REFERENCES "TASKS"."S_PROBL"("VidProblem");
ALTER TABLE "TASKS"."PROGRAMM" ADD FOREIGN KEY("KodDogovor") REFERENCES "TASKS"."CONTRACT"("KodDogovor");
ALTER TABLE "TASKS"."PROGRAMM" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_");
ALTER TABLE "TASKS"."PROJ_TIP" ADD FOREIGN KEY("KodTipResh") REFERENCES "TASKS"."TIPAG"("KodTipResh") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."PROJ_TIP" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."PROJ_TIP" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."PROJ_TIP" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."PR_TEACH" ADD FOREIGN KEY("KodUdostov") REFERENCES "TASKS"."CERTIFIC"("KodUdostov");
ALTER TABLE "TASKS"."PR_TEACH" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_");
ALTER TABLE "TASKS"."REG_KOR" ADD FOREIGN KEY("KodPismIs") REFERENCES "TASKS"."CORR_OUT"("KodPismIs");
ALTER TABLE "TASKS"."REG_KOR" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."REG_KOR" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."REG_KOR" ADD FOREIGN KEY("Peredano") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."REG_KOR" ADD FOREIGN KEY("Pismo") REFERENCES "TASKS"."CORR_IN"("KodPismVx");
ALTER TABLE "TASKS"."REG_KOUT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."REG_KOUT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."REG_KOUT" ADD FOREIGN KEY("Pismo") REFERENCES "TASKS"."CORR_OUT"("KodPismIs");
ALTER TABLE "TASKS"."REKSOFT" ADD FOREIGN KEY("KodRabKont") REFERENCES "TASKS"."CON_TIME"("KodRabKont");
ALTER TABLE "TASKS"."REKSOFT" ADD FOREIGN KEY("KodTochnost") REFERENCES "TASKS"."S_OCENK"("KodTochnost");
ALTER TABLE "TASKS"."RESCH" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."RESCH" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."RIGHTS" ADD FOREIGN KEY("KodMenyuObs") REFERENCES "TASKS"."DESKMENU"("KodMenyuObs");
ALTER TABLE "TASKS"."RIGHTS" ADD FOREIGN KEY("LichnyjKod") REFERENCES "TASKS"."USERS"("LichnyjKod") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."RIGHTS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."RJ_LICO" ADD FOREIGN KEY("KodRajona") REFERENCES "TASKS"."SU_RAJ"("KodRajona");
ALTER TABLE "TASKS"."RJ_LICO" ADD FOREIGN KEY("Organizacz_") REFERENCES "TASKS"."CLIENT"("KodKlienta");
ALTER TABLE "TASKS"."RJ_LICO" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."RJ_LICO" ADD FOREIGN KEY("TipSotrud_") REFERENCES "TASKS"."S_LIC"("TipSotrud_");
ALTER TABLE "TASKS"."RJ_LICO" ADD FOREIGN KEY("UrovGram_") REFERENCES "TASKS"."S_GRAM"("UrovGram_");
ALTER TABLE "TASKS"."SEANS" ADD FOREIGN KEY("KodStanczii") REFERENCES "TASKS"."STATIONS"("KodStanczii");
ALTER TABLE "TASKS"."SEANS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."SLV_CLN" ADD FOREIGN KEY("KodTabliczy") REFERENCES "TASKS"."S_TABLES"("KodTabliczy");
ALTER TABLE "TASKS"."SU_PROGR" ADD FOREIGN KEY("KodVedomst") REFERENCES "TASKS"."S_VEDOMS"("KodVedomst");
ALTER TABLE "TASKS"."SU_RAJ" ADD FOREIGN KEY("Region") REFERENCES "TASKS"."S_OBL"("Region");
ALTER TABLE "TASKS"."S_ORG_M1" ADD FOREIGN KEY("KodOblasti") REFERENCES "TASKS"."SLOVO3"("KodOblasti");
ALTER TABLE "TASKS"."S_ORG_M1" ADD FOREIGN KEY("KodPodrazd") REFERENCES "TASKS"."SPR038"("KodPodrazd");
ALTER TABLE "TASKS"."S_WORK" ADD FOREIGN KEY("KodStatusa") REFERENCES "TASKS"."S_STATUS"("KodStatusa");
ALTER TABLE "TASKS"."TAB_RTS" ADD FOREIGN KEY("KodTabliczy") REFERENCES "TASKS"."S_TABLES"("KodTabliczy");
ALTER TABLE "TASKS"."TAB_RTS" ADD FOREIGN KEY("LichnyjKod") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TAB_RTS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("Realizacz") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("Sostoyanie") REFERENCES "TASKS"."STATE"("Sostoyanie");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("Vazhnost") REFERENCES "TASKS"."S_VAJN"("KodVazhn_");
ALTER TABLE "TASKS"."TASKS" ADD FOREIGN KEY("Vvod") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."TASKSCTG" ADD FOREIGN KEY("Kategoriya") REFERENCES "TASKS"."CATEGORY"("Kategoriya");
ALTER TABLE "TASKS"."TASKSCTG" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TASKSCTG" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TAS_POST" ADD FOREIGN KEY("ID_punkta") REFERENCES "TASKS"."CONTENTS"("ID_punkta") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TAS_POST" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TAS_PROV" ADD FOREIGN KEY("KodMastera") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."TAS_PROV" ADD FOREIGN KEY("KodRezult") REFERENCES "TASKS"."S_PROVER"("KodRezult");
ALTER TABLE "TASKS"."TAS_PROV" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TAS_PROV" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TAS_PROV" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TAS_TIME" ADD FOREIGN KEY("KodMastera") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."TAS_TIME" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TAS_TIME" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TIPAG" ADD FOREIGN KEY("KodProblem") REFERENCES "TASKS"."PROBL"("KodProblem") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TIPAG" ADD FOREIGN KEY("KodResheniya") REFERENCES "TASKS"."RESCH"("KodResheniya") ON DELETE CASCADE ;
ALTER TABLE "TASKS"."TIPAG" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TIPAG" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_CONT" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt");
ALTER TABLE "TASKS"."TXT_CONT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_CONT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_IN" ADD FOREIGN KEY("KodPismVx") REFERENCES "TASKS"."CORR_IN"("KodPismVx");
ALTER TABLE "TASKS"."TXT_IN" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_IN" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_OUT" ADD FOREIGN KEY("KodPismIs") REFERENCES "TASKS"."CORR_OUT"("KodPismIs");
ALTER TABLE "TASKS"."TXT_OUT" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_OUT" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_TASK" ADD FOREIGN KEY("KodTeksZad") REFERENCES "TASKS"."TXT"("KodTeksZad");
ALTER TABLE "TASKS"."TXT_TASK" ADD FOREIGN KEY("KodZadachi") REFERENCES "TASKS"."TASKS"("KodZadachi");
ALTER TABLE "TASKS"."TXT_TASK" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."TXT_TASK" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."USERS" ADD FOREIGN KEY("KodMastera") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."USERS" ADD FOREIGN KEY("KodMenyuObs") REFERENCES "TASKS"."DESKMENU"("KodMenyuObs");
ALTER TABLE "TASKS"."USERS" ADD FOREIGN KEY("KodOtdela") REFERENCES "TASKS"."S_OTDEL"("KodOtdela");
ALTER TABLE "TASKS"."USERS" ADD FOREIGN KEY("KtoVvel") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."USERS" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("KodKontakt") REFERENCES "TASKS"."LC_CONT"("KodKontakt");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("KodVersii") REFERENCES "TASKS"."VERSION"("KodVersii");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("Otvetstv_") REFERENCES "TASKS"."USERS"("LichnyjKod");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("TipProgr_") REFERENCES "TASKS"."SU_PROGR"("TipProgr_");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("Vydal") REFERENCES "TASKS"."MASTERS"("KodMastera");
ALTER TABLE "TASKS"."ZAYV_LIC" ADD FOREIGN KEY("Zayavka_ot") REFERENCES "TASKS"."RJ_LICO"("KodSotrudn");
