CREATE SCHEMA "dbo" AUTHORIZATION postgres;


CREATE TABLE "dbo"."Employees" (
	"EmployeeID"	INT,
	(4)(10,0)"LastName"		VARCHAR(40),
	(40)(0,0)"FirstName"	VARCHAR(20),
	(20)(0,0)"Title"			VARCHAR(60),
	(60)(0,0)"TitleOfCourtesy"	VARCHAR(50),
	(50)(0,0)"BirthDate"	DATETIME,
	(8)(23,3)"HireDate"		DATETIME,
	(8)(23,3)"Address"		VARCHAR(120),
	(120)(0,0)"City"			VARCHAR(30),
	(30)(0,0)"Region"		VARCHAR(30),
	(30)(0,0)"PostalCode"	VARCHAR(20),
	(20)(0,0)"Country"		VARCHAR(30),
	(30)(0,0)"HomePhone"	VARCHAR(48),
	(48)(0,0)"Extension"	VARCHAR(8),
	(8)(0,0)"Photo"			BYTEA,
	(16)(0,0)"Notes"			TEXT,
	(16)(0,0)"ReportsTo"	INT,
	(4)(10,0)"PhotoPath"	VARCHAR(510),
	(510)(0
);

CREATE TABLE "dbo"."Categories" (
	"CategoryID"	INT,
	(4)(10,0)"CategoryName"	VARCHAR(30),
	(30)(0,0)"Description"	TEXT,
	(16)(0,0)"Picture"		BYTEA,
	(16)(0
);

CREATE TABLE "dbo"."Customers" (
	"CustomerID"	CHAR(10),
	(10)(0,0)"CompanyName"	VARCHAR(80),
	(80)(0,0)"ContactName"	VARCHAR(60),
	(60)(0,0)"ContactTitle"	VARCHAR(60),
	(60)(0,0)"Address"		VARCHAR(120),
	(120)(0,0)"City"			VARCHAR(30),
	(30)(0,0)"Region"		VARCHAR(30),
	(30)(0,0)"PostalCode"	VARCHAR(20),
	(20)(0,0)"Country"		VARCHAR(30),
	(30)(0,0)"Phone"			VARCHAR(48),
	(48)(0,0)"Fax"			VARCHAR(48),
	(48)(0
);

CREATE TABLE "dbo"."Shippers" (
	"ShipperID"	INT,
	(4)(10,0)"CompanyName"	VARCHAR(80),
	(80)(0,0)"Phone"			VARCHAR(48),
	(48)(0
);

CREATE TABLE "dbo"."Suppliers" (
	"SupplierID"	INT,
	(4)(10,0)"CompanyName"	VARCHAR(80),
	(80)(0,0)"ContactName"	VARCHAR(60),
	(60)(0,0)"ContactTitle"	VARCHAR(60),
	(60)(0,0)"Address"		VARCHAR(120),
	(120)(0,0)"City"			VARCHAR(30),
	(30)(0,0)"Region"		VARCHAR(30),
	(30)(0,0)"PostalCode"	VARCHAR(20),
	(20)(0,0)"Country"		VARCHAR(30),
	(30)(0,0)"Phone"			VARCHAR(48),
	(48)(0,0)"Fax"			VARCHAR(48),
	(48)(0,0)"HomePage"		TEXT,
	(16)(0
);

CREATE TABLE "dbo"."Orders" (
	"OrderID"		INT,
	(4)(10,0)"CustomerID"	CHAR(10),
	(10)(0,0)"EmployeeID"	INT,
	(4)(10,0)"OrderDate"	DATETIME,
	(8)(23,3)"RequiredDate"	DATETIME,
	(8)(23,3)"ShippedDate"	DATETIME,
	(8)(23,3)"ShipVia"		INT,
	(4)(10,0)"Freight"		MONEY,
	(8)(19,4)"ShipName"		VARCHAR(80),
	(80)(0,0)"ShipAddress"	VARCHAR(120),
	(120)(0,0)"ShipCity"		VARCHAR(30),
	(30)(0,0)"ShipRegion"	VARCHAR(30),
	(30)(0,0)"ShipPostalCode"	VARCHAR(20),
	(20)(0,0)"ShipCountry"	VARCHAR(30),
	(30)(0
);

CREATE TABLE "dbo"."Products" (
	"ProductID"	INT,
	(4)(10,0)"ProductName"	VARCHAR(80),
	(80)(0,0)"SupplierID"	INT,
	(4)(10,0)"CategoryID"	INT,
	(4)(10,0)"QuantityPerUnit"	VARCHAR(40),
	(40)(0,0)"UnitPrice"	MONEY,
	(8)(19,4)"UnitsInStock"	SMALLINT,
	(2)(5,0)"UnitsOnOrder"	SMALLINT,
	(2)(5,0)"ReorderLevel"	SMALLINT,
	(2)(5,0)"Discontinued"	SMALLINT,
	(1)(1
);

CREATE TABLE "dbo"."Order Details" (
	"OrderID"		INT,
	(4)(10,0)"ProductID"	INT,
	(4)(10,0)"UnitPrice"	MONEY,
	(8)(19,4)"Quantity"		SMALLINT,
	(2)(5,0)"Discount"		REAL,
	(4)(24
);

CREATE TABLE "dbo"."CustomerCustomerDemo" (
	"CustomerID"	CHAR(10),
	(10)(0,0)"CustomerTypeID"	CHAR(20),
	(20)(0
);

CREATE TABLE "dbo"."CustomerDemographics" (
	"CustomerTypeID"	CHAR(20),
	(20)(0,0)"CustomerDesc"	TEXT,
	(16)(0
);

CREATE TABLE "dbo"."Region" (
	"RegionID"		INT,
	(4)(10,0)"RegionDescription"	CHAR(100),
	(100)(0
);

CREATE TABLE "dbo"."Territories" (
	"TerritoryID"	VARCHAR(40),
	(40)(0,0)"TerritoryDescription"	CHAR(100),
	(100)(0,0)"RegionID"		INT,
	(4)(10
);

CREATE TABLE "dbo"."EmployeeTerritories" (
	"EmployeeID"	INT,
	(4)(10,0)"TerritoryID"	VARCHAR(40),
	(40)(0
);

CREATE UNIQUE INDEX ON "dbo"."Employees" ("EmployeeID");
CREATE INDEX ON "dbo"."Employees" ("LastName");
CREATE INDEX ON "dbo"."Employees" ("PostalCode");
CREATE UNIQUE INDEX ON "dbo"."Categories" ("CategoryID");
CREATE INDEX ON "dbo"."Categories" ("CategoryName");
CREATE UNIQUE INDEX ON "dbo"."Customers" ("CustomerID");
CREATE INDEX ON "dbo"."Customers" ("City");
CREATE INDEX ON "dbo"."Customers" ("CompanyName");
CREATE INDEX ON "dbo"."Customers" ("PostalCode");
CREATE INDEX ON "dbo"."Customers" ("Region");
CREATE UNIQUE INDEX ON "dbo"."Shippers" ("ShipperID");
CREATE UNIQUE INDEX ON "dbo"."Suppliers" ("SupplierID");
CREATE INDEX ON "dbo"."Suppliers" ("CompanyName");
CREATE INDEX ON "dbo"."Suppliers" ("PostalCode");
CREATE UNIQUE INDEX ON "dbo"."Orders" ("OrderID");
CREATE INDEX ON "dbo"."Orders" ("CustomerID");
CREATE INDEX ON "dbo"."Orders" ("CustomerID");
CREATE INDEX ON "dbo"."Orders" ("EmployeeID");
CREATE INDEX ON "dbo"."Orders" ("EmployeeID");
CREATE INDEX ON "dbo"."Orders" ("OrderDate");
CREATE INDEX ON "dbo"."Orders" ("ShippedDate");
CREATE INDEX ON "dbo"."Orders" ("ShipVia");
CREATE INDEX ON "dbo"."Orders" ("ShipPostalCode");
CREATE UNIQUE INDEX ON "dbo"."Products" ("ProductID");
CREATE INDEX ON "dbo"."Products" ("CategoryID");
CREATE INDEX ON "dbo"."Products" ("CategoryID");
CREATE INDEX ON "dbo"."Products" ("ProductName");
CREATE INDEX ON "dbo"."Products" ("SupplierID");
CREATE INDEX ON "dbo"."Products" ("SupplierID");
CREATE UNIQUE INDEX ON "dbo"."Order Details" ("OrderID");
CREATE UNIQUE INDEX ON "dbo"."Order Details" ("ProductID");
CREATE INDEX ON "dbo"."Order Details" ("OrderID");
CREATE INDEX ON "dbo"."Order Details" ("OrderID");
CREATE INDEX ON "dbo"."Order Details" ("ProductID");
CREATE INDEX ON "dbo"."Order Details" ("ProductID");
CREATE UNIQUE INDEX ON "dbo"."CustomerCustomerDemo" ("CustomerID");
CREATE UNIQUE INDEX ON "dbo"."CustomerCustomerDemo" ("CustomerTypeID");
CREATE UNIQUE INDEX ON "dbo"."CustomerDemographics" ("CustomerTypeID");
CREATE UNIQUE INDEX ON "dbo"."Region" ("RegionID");
CREATE UNIQUE INDEX ON "dbo"."Territories" ("TerritoryID");
CREATE UNIQUE INDEX ON "dbo"."EmployeeTerritories" ("EmployeeID");
CREATE UNIQUE INDEX ON "dbo"."EmployeeTerritories" ("TerritoryID");


ALTER TABLE "dbo"."Employees" ADD PRIMARY KEY("EmployeeID") ;
ALTER TABLE "dbo"."Categories" ADD PRIMARY KEY("CategoryID") ;
ALTER TABLE "dbo"."Customers" ADD PRIMARY KEY("CustomerID") ;
ALTER TABLE "dbo"."Shippers" ADD PRIMARY KEY("ShipperID") ;
ALTER TABLE "dbo"."Suppliers" ADD PRIMARY KEY("SupplierID") ;
ALTER TABLE "dbo"."Orders" ADD PRIMARY KEY("OrderID") ;
ALTER TABLE "dbo"."Products" ADD PRIMARY KEY("ProductID") ;
ALTER TABLE "dbo"."Order Details" ADD PRIMARY KEY("OrderID","ProductID") ;
ALTER TABLE "dbo"."CustomerCustomerDemo" ADD PRIMARY KEY("CustomerID","CustomerTypeID") ;
ALTER TABLE "dbo"."CustomerDemographics" ADD PRIMARY KEY("CustomerTypeID") ;
ALTER TABLE "dbo"."Region" ADD PRIMARY KEY("RegionID") ;
ALTER TABLE "dbo"."Territories" ADD PRIMARY KEY("TerritoryID") ;
ALTER TABLE "dbo"."EmployeeTerritories" ADD PRIMARY KEY("EmployeeID","TerritoryID") ;

ALTER TABLE "dbo"."Employees" ADD FOREIGN KEY("ReportsTo") REFERENCES "dbo"."Employees"("EmployeeID");
ALTER TABLE "dbo"."Orders" ADD FOREIGN KEY("CustomerID") REFERENCES "dbo"."Customers"("CustomerID");
ALTER TABLE "dbo"."Orders" ADD FOREIGN KEY("EmployeeID") REFERENCES "dbo"."Employees"("EmployeeID");
ALTER TABLE "dbo"."Orders" ADD FOREIGN KEY("ShipVia") REFERENCES "dbo"."Shippers"("ShipperID");
ALTER TABLE "dbo"."Products" ADD FOREIGN KEY("SupplierID") REFERENCES "dbo"."Suppliers"("SupplierID");
ALTER TABLE "dbo"."Products" ADD FOREIGN KEY("CategoryID") REFERENCES "dbo"."Categories"("CategoryID");
ALTER TABLE "dbo"."Order Details" ADD FOREIGN KEY("OrderID") REFERENCES "dbo"."Orders"("OrderID");
ALTER TABLE "dbo"."Order Details" ADD FOREIGN KEY("ProductID") REFERENCES "dbo"."Products"("ProductID");
ALTER TABLE "dbo"."CustomerCustomerDemo" ADD FOREIGN KEY("CustomerID") REFERENCES "dbo"."Customers"("CustomerID");
ALTER TABLE "dbo"."CustomerCustomerDemo" ADD FOREIGN KEY("CustomerTypeID") REFERENCES "dbo"."CustomerDemographics"("CustomerTypeID");
ALTER TABLE "dbo"."Territories" ADD FOREIGN KEY("RegionID") REFERENCES "dbo"."Region"("RegionID");
ALTER TABLE "dbo"."EmployeeTerritories" ADD FOREIGN KEY("EmployeeID") REFERENCES "dbo"."Employees"("EmployeeID");
ALTER TABLE "dbo"."EmployeeTerritories" ADD FOREIGN KEY("TerritoryID") REFERENCES "dbo"."Territories"("TerritoryID");
