/****** INSERT INTO TABLES  ******/

USE GenericCompanyDB
GO

INSERT INTO Company(CompanyName,DateOfEstablish,Description) VALUES ('Pick & Pay','2018-10-20','Pick & Pay is a general grocery store'),
		('We buy cars','2000-01-02','Easy car sales'),
		('Incredible Connection','1993-03-01','All purpose tech store'),
		('Woolworths','1999-02-09','Groceries and all purpose store'),
		('Checkers','2002-02-02','Checkers is a general grocery store');

INSERT INTO Province(ProvinceName) VALUES ('Gauteng'), ('Western Cape'), ('Free State'), ('Northern Cape'), ('Limpopo'), ('North West'), ('Eastern Cape'), ('Kwazulu Natal'), ('Mpumalanga');

INSERT INTO City(CityName,ProvinceID) VALUES ('Pretoria', 1),('Johannesburg', 1),('Durban', 8),('East London', 7),('Cape Town', 2);

INSERT INTO Suburb(SuburbName,PostalCode,CityID) VALUES ('Hatfield','0083',1),('Groenkloof','0181',1),('Boysens','2016',2),('Rosebank','2196',2),('Goodwood','7460',5),('Kensington','7405',5)

INSERT INTO Address(AddressName,SuburbID) VALUES ('1115 Burnett St','1'),('Duncan St','1'),('1 Sturdee Ave','4'),('33 Paarl St','5'),('89 Hugo St','5');

INSERT INTO StoreType(TypeName) VALUES ('GWilly'),('Ty'),('shop'),('Fun'),('General');

INSERT INTO Store(StoreName,TypeID,CompanyID,AddressID)
VALUES ('Highveld Spar',1,3,5),('Jean Village Spar',2,2,1),('Lifestyle Centre Spar',3,5,4),('Northcliff Spar',4,3,3),('Stellenbosch Spar',5,5,2);

INSERT INTO Role(RoleName, Description)
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

EXEC uspInsertEmployee 9803180097089, 'Emma', 'Coetzer', 1, 'emmac@bbd.co.za', '0718831926', 1, 1;
EXEC uspInsertEmployee 9803180097081, 'Marius', 'Ludick', 2, 'mariusl@bbd.co.za', '0796773345', 2, 1;
EXEC uspInsertEmployee 9803180097082, 'Tiaan', 'Viljoen', 3, 'tiaanv@bbd.com', '0763939808', 1, 1;
EXEC uspInsertEmployee 9803180097083, 'Evert', 'Genis', 4, 'evert@bbd.co.za', '0818589797', 3, 2;
EXEC uspInsertEmployee 9803180097084, 'Francois', 'de Klerk', 5, 'francoisdk@bbd.co.za', '0725138324', 4, 2;
EXEC uspInsertEmployee 9803180097085, 'Vineet', 'Naran', 5, 'vineet@bbd.co.za', '0796973833', 4, 2;

INSERT INTO Category(CategoryName,CategoryDescription)
VALUES 	('Cans','This is a coke can'),
		('Mustang','This is a Mustang');

INSERT INTO BaseProduct(CategoryID,BaseProductName,BaseProductDescription,BaseProductPicture)
VALUES 	(1,'Coke','This might be a coke can','C://user/picture/cokeCan.png'),
		(2,'Ford','This might be a Ford car', 'C://user/picture/fordCar.png');

INSERT INTO BillingType(BillingTypeName,BillingTypeDescription)
VALUES 	('Credit Card', 'This billing is done with Credit Card'),
		('Cash', 'This billing is done with Cash');

INSERT INTO ProductIntance(BaseProductID,BillingTypeID,ProductIntancePrice)
VALUES 	(1,2,12),
		(2,1,50000);

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