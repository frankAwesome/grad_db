/****** BBD GRAD PROGRAM  ******/


/****** CREATE TABLES  ******/
USE GradDB;
GO

CREATE TABLE CompanyType
(
	CompanyTypeID INT IDENTITY(1,1) PRIMARY KEY,
	CompanyTypeName VARCHAR(50) NOT NULL,
);

CREATE TABLE Company
(
	CompanyID INT IDENTITY(1,1) PRIMARY KEY,
	CompanyName VARCHAR(50) NOT NULL,
	CompanyTypeID INT FOREIGN KEY REFERENCES CompanyType(CompanyTypeID),
	DateOfEstablish DATE NOT NULL,
	Description VARCHAR(100) NOT NULL,
);





CREATE TABLE City
(
	CityID INT IDENTITY(1,1) PRIMARY KEY,
	CityName VARCHAR(50)
CREATE TABLE Addresses
(
	AddressID INT IDENTITY(1,1) PRIMARY KEY,
	AddressName VARCHAR(50) NOT NULL,
	Suburb_ID INT FOREIGN KEY REFERENCES Suburb(SuburbID)
);

CREATE TABLE Suburb
(
	SuburbID INT IDENTITY(1,1) PRIMARY KEY,
	SuburbName VARCHAR(50) NOT NULL,
	Zipcode VARCHAR(5) NULL,
	CityID INT FOREIGN KEY REFERENCES City(CityID)
);

CREATE TABLE Addresses
(
	AddressID INT IDENTITY(1,1) PRIMARY KEY,
	AddressName VARCHAR(50) NOT NULL,
	Suburb_ID INT FOREIGN KEY REFERENCES Suburb(SuburbID)
);


CREATE TABLE Roles /* Role is a reserved word */
(
	RoleID INT IDENTITY(1,1) PRIMARY KEY,
	RoleName VARCHAR(50) NOT NULL,
	Description VARCHAR(100) NOT NULL,
);

CREATE TABLE Permission
(
	PermissionID INT IDENTITY(1,1) PRIMARY KEY,
	PermissionName VARCHAR(50) NOT NULL,
	Description VARCHAR(100) NOT NULL,
);

CREATE TABLE RolePermission
(
	RolePermissionID INT IDENTITY(1,1) PRIMARY KEY,
	RoleID INT FOREIGN KEY REFERENCES Roles(RoleID),
	PermissionID INT FOREIGN KEY REFERENCES Permission(PermissionID)
);


CREATE TABLE Store
(
	StoreID INT IDENTITY(1,1) PRIMARY KEY,
	StoreName VARCHAR(50) NOT NULL,
	CompanyID INT FOREIGN KEY REFERENCES Company(CompanyID),
	AddressID INT FOREIGN KEY REFERENCES Addresses(AddressID)
);

CREATE TABLE City
(
	CityID INT IDENTITY(1,1) PRIMARY KEY,
	CityName VARCHAR(50)
);

/* CREATE Products */

CREATE TABLE BaseProduct
(
	BaseProductID INT IDENTITY(1,1) PRIMARY KEY,
	CategoryID INT FOREIGN KEY REFERENCES Category(CategoryID),
	BaseProductName VARCHAR(50) NOT NULL,
	BaseProductDescription VARCHAR(100) NOT NULL,
	BaseProductPicture VARCHAR(50) NOT NULL,
);

CREATE TABLE Category
(
	CategoryID INT IDENTITY(1,1) PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	CategoryDescription VARCHAR(100) NOT NULL,
);

CREATE TABLE ProductIntance
(
	ProductInstanceID INT IDENTITY(1,1) PRIMARY KEY,
	BaseProductID INT FOREIGN KEY REFERENCES BaseProduct(BaseProductID),
	BillingTypeID INT FOREIGN KEY REFERENCES BillingType(BillingTypeID),
	ProductIntancePrice DECIMAL(6,2) NOT NULL,
);

CREATE TABLE BillingType
(
	BillingTypeID INT IDENTITY(1,1) PRIMARY KEY,
	BillingTypeName VARCHAR(50) NOT NULL,
	BillingTypeDescription VARCHAR(100) NOT NULL,
);

CREATE TABLE ProductQuantity
(
	ProductQuantityID INT IDENTITY(1,1) PRIMARY KEY,
	ProductInstanceID INT FOREIGN KEY REFERENCES ProductIntance(ProductInstanceID),
	ProductQuantityQty INT,
);

CREATE TABLE ProductValue
(
	ProductValueID INT IDENTITY(1,1) PRIMARY KEY,
	ProductInstanceID INT FOREIGN KEY REFERENCES ProductIntance(ProductInstanceID),
	ProductAttributeID INT FOREIGN KEY REFERENCES ProductAttribute(ProductAttributeID),
	ProductValueVal VARCHAR(50) NOT NULL,
);

CREATE TABLE ProductAttribute
(
	ProductAttributeID INT IDENTITY(1,1) PRIMARY KEY,
	ProductAttributeName VARCHAR(50) NOT NULL,
	ProductAttributeDecription VARCHAR(100) NOT NULL,
	ProductAttributeType VARCHAR(50) NOT NULL,
);
 

/****** CREATE TABLES END  ******/


/****** INSERT INTO TABLES  ******/

INSERT INTO CompanyType(CompanyTypeName)
VALUES ('General purose grocery store'),('Car sales'),('Technology store');

INSERT INTO Company(CompanyName, CompanyTypeID, DateOfEstablish, Description)
VALUES ('Pick & Pay',1,'2018-10-20','Pick & Pay is a general grocery store'),
		('We buy cars',2,'2000-01-02','Easy car sales'),
		('Incredible Connection',3,'1993-03-01','All purpose tech store'),
		('Woolworths',1,'1999-02-09','Groceries and all purpose store'),
		('Checkers',1,'2002-02-02','Checkers is a general grocery store');




INSERT INTO City(CityName)
VALUES ('Pretoria'),('Johannesburg'),('Durban'),('East London'),('Cape Town');

INSERT INTO Suburb(SuburbName,Zipcode,CityID)
VALUES ('Hatfield','0083','1'),('Groenkloof','0181','1'),('Boysens','2016','2'),('Rosebank','2196','2'),('Goodwood','7460','5'),('Kensington','7405','5')

INSERT INTO Addresses(AddressName,Suburb_ID)
VALUES ('1115 Burnett St','1'),('Duncan St','1'),('1 Sturdee Ave','4'),('33 Paarl St','5'),('89 Hugo St','5')

INSERT INTO Roles(RoleName, Description)
VALUES	('Director', 'Decides on broader company direction'),
		('Executive', 'Has senior managerial responsibilities'),
		('Manager', 'Controls or directs staff'),
		('Cashier', 'Processes sales'),
		('Packer', 'Packs stock or purchased items');

INSERT INTO Permission(PermissionName, Description)
VALUES	('Till', 'Access to cashier tills'),
		('Records', 'Can view employee records'),
		('Camera', 'Ability to view camera footage');
	
INSERT INTO RolePermission(RoleID, PermissionID)
VALUES	(1, 1),
		(1, 2),
		(1, 3),
		(2, 1),
		(2, 2),
		(2, 3),
		(3, 1),
		(3, 2),
		(3, 3),
		(4, 1);


INSERT INTO Store(StoreName,CompanyID,AddressID)
VALUES ('Highveld Spar',3,5),('Jean Village Spar',2,1),('Lifestyle Centre Spar',5,4),('Northcliff Spar',3,3),('Stellenbosch Spar',5,2);


/* INSERT Products */
INSERT INTO BaseProduct(CategoryID,BaseProductName,BaseProductDescription,BaseProductPicture)
VALUES 	(1,'Coke','This might be a coke can','C://user/picture/cokeCan.png'),
		(2,'Ford','This might be a Ford car','C://user/picture/fordCar.png');

INSERT INTO Category(CategoryName,CategoryDescription)
VALUES 	('Cans','This is a coke can'),
		('Mustang','This is a Mustang');

INSERT INTO ProductIntance(BaseProductID,BillingTypeID,ProductIntancePrice)
VALUES 	(1,2,12),
		(2,1,50000);

INSERT INTO BillingType(BillingTypeName,BillingTypeDescription)
VALUES 	('Credit Card', 'This billing is done with Credit Card'),
		('Cash', 'This billing is done with Cash');

INSERT INTO ProductQuantity(ProductInstanceID,ProductQuantityQty)
VALUES 	(1,10),
		(2,1);

INSERT INTO ProductValue(ProductInstanceID,ProductValueVal)
VALUES 	(1,'Red'),
		(1,'White');

INSERT INTO ProductAttribute(ProductAttributeName,ProductAttributeDecription,ProductAttributeType)
VALUES 	('Color','Color of product','OutwardsColor'),
		('Size','Size of product','Length');

/****** INSERT INTO TABLES END  ******/



/****** UPDATE TABLES  ******/
UPDATE Store
SET StoreName = 'Groenkloof Spar'
WHERE AddressID = 1;

/* UPDATE Products */
UPDATE BaseProduct
SET BaseProductName = 'Cheese'
WHERE BaseProductID = 1;

UPDATE Category
SET CategoryDescription = 'This is a brand new Mustang'
WHERE CategoryID = 2;

UPDATE ProductIntance
SET BillingTypeID = 1
WHERE ProductIntanceID = 1;

UPDATE BillingType
SET BillingTypeDescription = 'This is cold hard cash'
WHERE BillingTypeID = 2;

UPDATE ProductQuantity
SET ProductQuantityQty = 8
WHERE ProductQuantityID = 1;

UPDATE ProductValue
SET ProductValueVal = 'Grayish'
WHERE ProductValueID = 1;

UPDATE ProductAttribute
SET ProductAttributeType = 'Width'
WHERE ProductAttributeID = 2;

/****** UPDATE TABLES END  ******/


/****** SELECT TABLES  ******/
SELECT a.CompanyName,b.CompanyTypeName,a.DateOfEstablish,a.Description
FROM Company a
JOIN CompanyType b ON a.CompanyTypeID=b.CompanyTypeID

SELECT a.AddressName,b.SuburbName,b.Zipcode,c.CityName
FROM Addresses a
JOIN Suburb b ON a.Suburb_ID=b.SuburbID
JOIN City c ON b.CityID=c.CityID

SELECT a.StoreName,b.AddressName,c.SuburbName,c.Zipcode,d.CityName,e.CompanyName,f.CompanyTypeName
FROM Store a
JOIN Addresses b ON a.AddressID=b.AddressID
JOIN Suburb c ON b.Suburb_ID=c.SuburbID
JOIN City d ON c.CityID=d.CityID
JOIN Company e ON e.CompanyID=a.CompanyID
JOIN CompanyType f ON e.CompanyTypeID=f.CompanyTypeID

SELECT r.RoleName, r.Description, p.PermissionName, p.Description
FROM Roles r
JOIN RolePermission rp ON r.RoleID = rp.RoleID
JOIN Permission p ON p.PermissionID = rp.PermissionID;

/* SELECT Products */
SELECT *
FROM BaseProduct

/****** SELECT TABLES END  ******/
/****** SELECT TABLES END  ******/

/****** INSERT INTO TABLES END  ******/

/***** STORED PROCEDURES ******/
	-- Insert Address
	CREATE PROCEDURE InsertAddress
		@AddressName VARCHAR(50),
		@SuburbID INT
	AS
	BEGIN
		SET NOCOUNT ON;

		INSERT INTO Addresses (AddressName,Suburb_ID)
		VALUES (@AddressName, @SuburbID)
	END
	-- Insert Suburb
	CREATE PROCEDURE InsertSuburb
		@SuburbName VARCHAR(50),
		@Zipcode VARCHAR(5),
		@CityID INT
	AS
	BEGIN
		SET NOCOUNT ON;

		INSERT INTO Suburb (SuburbName,Zipcode,CityID)
		VALUES (@SuburbName,@Zipcode,@CityID)
	END

	-- Insert City
	CREATE PROCEDURE InsertCity
		@CityName VARCHAR(50)
	AS
	BEGIN
		SET NOCOUNT ON;

		INSERT INTO City(CityName)
		VALUES (@CityName)
	END

	-- Insert Full Address
	CREATE PROCEDURE InsertAddressFull
		@AddressName VARCHAR(50),
		@SuburbName VARCHAR(50),
		@Zipcode VARCHAR(5),
		@CityName VARCHAR(50)
	AS
	BEGIN
		DECLARE @SuburbID INT;
		DECLARE @CityID INT;
		DECLARE @AddressID INT;

		SELECT @CityID = CityID FROM City
		WHERE CityName = @CityName;
		IF (@CityID IS NULL)
			BEGIN
				INSERT INTO CITY(CityName)
				VALUES (@CityName);
				SET @CityID = (SELECT SCOPE_IDENTITY())
			END
		ELSE
			BEGIN
				SELECT @SuburbID = SuburbID FROM Suburb
				WHERE SuburbName = @SuburbName;
				IF (@SuburbID IS NULL)
					BEGIN
						INSERT INTO Suburb(SuburbName,Zipcode,CityID)
						VALUES (@SuburbName,@Zipcode,@CityID);
						SET @SuburbID = (SELECT SCOPE_IDENTITY())
					END
				ELSE
					BEGIN
						SELECT @AddressID = AddressID FROM Addresses
						WHERE AddressName = @AddressName
						IF (@AddressID IS NULL)
							BEGIN
								INSERT INTO Addresses(AddressName,Suburb_ID)
								VALUES (@AddressName,@SuburbID);
								RETURN 1;
							END
						ELSE
							RETURN 0;
					END
						
			END
	END




/***** STORED PROCEDURES END ****/


SELECT * FROM Suburb
SELECT * FROM Suburb
