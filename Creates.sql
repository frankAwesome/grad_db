/*******************************************************************************************************************************************
*															CREATE DATABASE																   *
********************************************************************************************************************************************/

CREATE DATABASE GenericCompanyDB;
GO

USE GenericCompanyDB;
GO




/*******************************************************************************************************************************************
*															CREATE TABLES	 															   *
********************************************************************************************************************************************/

CREATE TABLE Errors(
    ErrorID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    UserName VARCHAR(100),
    ErrorNumber INT,
    ErrorState INT,
    ErrorSeverity INT,
    ErrorLine INT,
    ErrorProcedure VARCHAR(MAX),
    ErrorMessage VARCHAR(MAX),
    ErrorDateTime DATETIME
);

CREATE TABLE Company
(
	CompanyID INT IDENTITY(1,1) PRIMARY KEY,
	CompanyName VARCHAR(50) NOT NULL,
	DateOfEstablish DATE NOT NULL,
	Description VARCHAR(100) NOT NULL,
);

CREATE TABLE Province
(
	ProvinceID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ProvinceName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE City
(
	CityID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	CityName VARCHAR(50) NOT NULL,
	ProvinceID INT FOREIGN KEY REFERENCES Province(ProvinceID)
);

CREATE TABLE Suburb
(
	SuburbID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SuburbName VARCHAR(50) NOT NULL,
	PostalCode CHAR(4) UNIQUE NULL,
	CityID INT FOREIGN KEY REFERENCES City(CityID)
);

CREATE TABLE Address
(
	AddressID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	AddressName VARCHAR(50) NOT NULL,
	SuburbID INT FOREIGN KEY REFERENCES Suburb(SuburbID)
);

CREATE TABLE StoreType
(
	TypeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	TypeName VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE Store
(
	StoreID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StoreName VARCHAR(50) UNIQUE NOT NULL,
	TypeID INT FOREIGN KEY REFERENCES StoreType(TypeID),
	CompanyID INT FOREIGN KEY REFERENCES Company(CompanyID),
	AddressID INT FOREIGN KEY REFERENCES Address(AddressID)
);

CREATE TABLE OperationalCostType
(
	OperationalCostTypeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Name VARCHAR(100) NOT NULL,
	Description VARCHAR(100) NOT NULL
);

CREATE TABLE OperationalCost
(
	OperationalCostID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	OperationalCostTypeID INT FOREIGN KEY REFERENCES OperationalCostType(OperationalCostTypeID) NOT NULL,
	Amount DECIMAL(20,2) NOT NULL
);

CREATE TABLE StoreOperationalCost
(
	StoreOperationalCostID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StoreID INT FOREIGN KEY REFERENCES Store(StoreID) NOT NULL,
	OperationalCostID INT FOREIGN KEY REFERENCES OperationalCost(OperationalCostID) NOT NULL
);

CREATE TABLE Role
(
	RoleID INT IDENTITY(1,1) PRIMARY KEY,
	RoleName VARCHAR(50) UNIQUE NOT NULL,
	Description VARCHAR(100) NOT NULL,
);

CREATE TABLE Permission
(
	PermissionID INT IDENTITY(1,1) PRIMARY KEY,
	PermissionName VARCHAR(50) UNIQUE NOT NULL,
	Description VARCHAR(100) NOT NULL,
);

CREATE TABLE RolePermission
(
	RolePermissionID INT IDENTITY(1,1) PRIMARY KEY,
	RoleID INT FOREIGN KEY REFERENCES Role(RoleID),
	PermissionID INT FOREIGN KEY REFERENCES Permission(PermissionID)
);

CREATE TABLE Employee
(
	EmployeeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	IDNumber BIGINT UNIQUE NOT NULL,
	FirstName VARCHAR(40),
	LastName VARCHAR(50),
	AddressID INT FOREIGN KEY REFERENCES Address(AddressID) NOT NULL,
	Email VARCHAR(20) UNIQUE,
	Phone CHAR(10) UNIQUE NOT NULL,
	RolePermissionID INT FOREIGN KEY REFERENCES RolePermission(RolePermissionID) NOT NULL,
	StoreID INT FOREIGN KEY REFERENCES Store(StoreID)
);

CREATE TABLE Markup
(
	MarkupID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	MarkupValue DECIMAL(10,2) NOT NULL
);

CREATE TABLE Deal
(
	DealID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	DealName VARCHAR(60) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	Description VARCHAR(100) NOT NULL,
	MarkupID INT FOREIGN KEY REFERENCES Markup(MarkupID) NOT NULL
);

CREATE TABLE ProductTax
(
	ProductTaxID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ProductTaxDescription VARCHAR(30) NOT NULL,
	ProductTaxValue DECIMAL(10,2) NOT NULL,
);


CREATE TABLE Category
(
	CategoryID INT IDENTITY(1,1) PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	CategoryDescription VARCHAR(100) NOT NULL,
);

CREATE TABLE BaseProduct
(
	BaseProductID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	CategoryID INT FOREIGN KEY REFERENCES Category(CategoryID) NOT NULL,
	BaseProductName VARCHAR(50) NOT NULL,
	BaseProductDescription VARCHAR(100) NOT NULL,
	BaseProductPicture VARCHAR(50) NOT NULL,
	DealID INT FOREIGN KEY REFERENCES Deal(DealID) NOT NULL,
	ProductTaxID INT FOREIGN KEY REFERENCES ProductTax(ProductTaxID) NOT NULL
);

CREATE TABLE StoreBaseProduct
(
	StoreID INT NOT NULL,
	BaseProductID INT NOT NULL,
	Quantity INT NOT NULL,
	CONSTRAINT PK_StoreToProduct PRIMARY KEY (StoreID,BaseProductID),
	CONSTRAINT FK_StoreToProduct FOREIGN KEY(StoreID) REFERENCES Store(StoreID),
	CONSTRAINT FK_ProductToStore FOREIGN KEY (BaseProductID) REFERENCES BaseProduct(BaseProductID)
);

CREATE TABLE Sale
(
	SaleID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SaleDate DATETIME NOT NULL,
	SaleAmount DECIMAL(10,2) NOT NULL,
	EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
	StoreID INT FOREIGN KEY REFERENCES Store(StoreID)
);

CREATE TABLE SaleProduct
(
	SaleID INT NOT NULL,
	BaseProductID INT NOT NULL,
	SellingPrice DECIMAL(10,2) NOT NULL,
	Quantity INT NOT NULL,
	CONSTRAINT PK_SaleProduct PRIMARY KEY (SaleID,BaseProductID),
	CONSTRAINT FK_Sale FOREIGN KEY (SaleID) REFERENCES Sale(SaleID),
	CONSTRAINT FK_Product FOREIGN KEY (BaseProductID) REFERENCES BaseProduct(BaseProductID)
);

CREATE TABLE BillingType
(
	BillingTypeID INT IDENTITY(1,1) PRIMARY KEY,
	BillingTypeName VARCHAR(50) NOT NULL,
	BillingTypeDescription VARCHAR(100) NOT NULL,
);

CREATE TABLE ProductInstance
(
	ProductInstanceID INT IDENTITY(1,1) PRIMARY KEY,
	BaseProductID INT FOREIGN KEY REFERENCES BaseProduct(BaseProductID),
	BillingTypeID INT FOREIGN KEY REFERENCES BillingType(BillingTypeID),
	ProductIntancePrice DECIMAL(10,2) NOT NULL,
);

CREATE TABLE ProductQuantity
(
	ProductQuantityID INT IDENTITY(1,1) PRIMARY KEY,
	ProductInstanceID INT FOREIGN KEY REFERENCES ProductInstance(ProductInstanceID),
	ProductQuantityQty INT,
);

CREATE TABLE ProductAttribute
(
	ProductAttributeID INT IDENTITY(1,1) PRIMARY KEY,
	ProductAttributeName VARCHAR(50) NOT NULL,
	ProductAttributeDecription VARCHAR(100) NOT NULL,
	ProductAttributeType VARCHAR(50) NOT NULL,
);

CREATE TABLE ProductValue
(
	ProductValueID INT IDENTITY(1,1) PRIMARY KEY,
	ProductInstanceID INT FOREIGN KEY REFERENCES ProductInstance(ProductInstanceID),
	ProductAttributeID INT FOREIGN KEY REFERENCES ProductAttribute(ProductAttributeID),
	ProductValueVal VARCHAR(50) NOT NULL,
);

CREATE TABLE ReturnReason
(
	ReturnReasonID INT IDENTITY(1,1) PRIMARY KEY,
	ReasonDescription VARCHAR(30) NOT NULL
);

CREATE TABLE SReturn /*** Return is a sql key word */
(
	ReturnID INT IDENTITY(1,1) PRIMARY KEY,
	ReturnDate DATE NOT NULL,
	ReturnReasonID INT FOREIGN KEY REFERENCES ReturnReason(ReturnReasonID)
);

CREATE TABLE SaleReturn
(
	ReturnID INT NOT NULL,
	SaleID INT NOT NULL,
	BaseProductID INT NOT NULL,
	Quantity INT NOT NULL
	CONSTRAINT PK_ReturnToSale PRIMARY KEY (ReturnID, SaleID, BaseProductID),
	CONSTRAINT FK_ReturnToSale FOREIGN KEY (ReturnID) REFERENCES SReturn(ReturnID),
	CONSTRAINT FK_SaleToReturn FOREIGN KEY (SaleID,BaseProductID) REFERENCES SaleProduct(SaleID,BaseProductID)
);

CREATE TABLE WriteoffReason
(
	WriteoffReasonID INT IDENTITY(1,1) PRIMARY KEY,
	ReasonDescription VARCHAR(30) NOT NULL
);

CREATE TABLE Writeoff
(
	WriteoffID INT IDENTITY(1,1) PRIMARY KEY,
	WriteoffDate DATE NOT NULL
);

CREATE TABLE ProductWriteoff
(
	WriteoffID INT NOT NULL,
	BaseProductID INT NOT NULL,
	StoreID INT NOT NULL,
	WriteoffReasonID INT FOREIGN KEY REFERENCES WriteoffReason(WriteoffReasonID),
	Quantity INT NOT NULL,
	CONSTRAINT PK_WriteOffToProduct PRIMARY KEY (WriteoffID, BaseProductID, StoreID),
	CONSTRAINT FK_WriteOffToProduct FOREIGN KEY (WriteoffID) REFERENCES Writeoff(WriteoffID),
	CONSTRAINT FK_ProductToWriteOff FOREIGN KEY (StoreID,BaseProductID) REFERENCES StoreBaseProduct(StoreID,BaseProductID)
);

CREATE TABLE StockTake
(
	StocktakeID INT IDENTITY(1,1) PRIMARY KEY,
	StocktakeDate DATE NOT NULL,
	EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID)
);

CREATE TABLE StockTakeProduct
(
	StocktakeID INT NOT NULL,
	BaseProductID INT NOT NULL,
	StoreID INT NOT NULL,
	NumberCounted INT NOT NULL,
	CONSTRAINT PK_StockTakeToProduct PRIMARY KEY (StocktakeID,BaseProductID,StoreID),
	CONSTRAINT FK_StockTakeToProduct FOREIGN KEY (StocktakeID) REFERENCES StockTake(StocktakeID),
	CONSTRAINT FK_ProductToStockTake FOREIGN KEY (StoreID,BaseProductID) REFERENCES StoreBaseProduct(StoreID,BaseProductID)
);

CREATE TABLE Supplier
(
	SupplierID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Name VARCHAR(60) NOT NULL,
	Email VARCHAR(20) NOT NULL,
	Phone CHAR(10) NOT NULL,
	AddressID INT FOREIGN KEY REFERENCES Address(AddressID)
);

CREATE TABLE Order
(
	OrderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SupplierID INT FOREIGN KEY REFERENCES Supplier(SupplierID) NOT NULL,
	StoreID INT FOREIGN KEY REFERENCES Store(StoreID) NOT NULL,
	OrderDate DATE NOT NULL,
	EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
	OrderStatus VARCHAR(20) NOT NULL,
	DateReceived DATE
);

CREATE TABLE SupplierOrder
(
	SupplierID INT NOT NULL,
	OrderID INT NOT NULL,
	CONSTRAINT PK_SupplierToOrder PRIMARY KEY (SupplierID, OrderID),
	CONSTRAINT FK_SupplierToOrder FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
	CONSTRAINT FK_OrderToSupplier FOREIGN KEY (OrderID) REFERENCES Order(OrderID)
);

CREATE TABLE OrderProduct
(
	SubCategoryID INT NOT NULL,
	OrderID INT NOT NULL,
	Quantity DECIMAL(10,2),
	CONSTRAINT PK_OrderToProduct PRIMARY KEY (SubCategoryID, OrderID),
	CONSTRAINT FK_OrderToProduct FOREIGN KEY (SubCategoryID) REFERENCES SubCategory(SubCategoryID),
	CONSTRAINT FK_ProductToOrder FOREIGN KEY (OrderID) REFERENCES Order(OrderID)
);



/*******************************************************************************************************************************************
*													 CREATE TABLES CONSTRAINTS	 														   *
********************************************************************************************************************************************/

ALTER TABLE Employee
ADD CONSTRAINT CHK_Valid_Email
CHECK(Email LIKE '%__@__%.__%' OR Email LIKE '%__@__%.__%.__%');

ALTER TABLE Employee
ADD CONSTRAINT CHK_Valid_Phone
CHECK(Phone NOT LIKE '%[^0-9]%');

ALTER TABLE Supplier
ADD CONSTRAINT CHK_Valid_Email
CHECK(Email LIKE '%__@__%.__%' OR Email LIKE '%__@__%.__%.__%');

ALTER TABLE Supplier
ADD CONSTRAINT CHK_Valid_Phone
CHECK(Phone NOT LIKE '%[^0-9]%');




/*******************************************************************************************************************************************
*													 CREATE SELECT STORED PROCEDURES 				 								       *
********************************************************************************************************************************************/

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspSelectCompany' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspSelectCompany
		@CompanyName VARCHAR(50) = NULL,
    	@DateOfEstablish DATE = NULL
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT CompanyName, DateOfEstablish, Description
		FROM Company
		WHERE
			(@CompanyName IS NULL OR (CompanyName = @CompanyName)) AND
			(@DateOfEstablish IS NULL OR (DateOfEstablish = @DateOfEstablish))
		OPTION (RECOMPILE)
	END')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspSelectEmployee' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspSelectEmployee
		@IDNumber BIGINT = NULL,
		@Email VARCHAR(20) = NULL
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT 
			employee.EmployeeID,
			employee.IDNumber,
			dbo.udfGetEmployeeFullName(employee.IDNumber) AS FullName,
			dbo.udfGetEmployeeAddress(employee.AddressID) AS Address,
			employee.Email,
			employee.Phone,
			role.RoleName AS Role,
			store.StoreName AS Store
		FROM Employee AS employee
		JOIN Store AS store ON employee.StoreID = store.StoreID
		JOIN RolePermission AS rolePermission ON employee.RolePermissionID = rolePermission.RolePermissionID
		JOIN Role AS role ON rolePermission.RoleID = role.RoleID
		WHERE 
			(@IDNumber IS NULL OR (employee.IDNumber = @IDNumber)) AND
			(@Email IS NULL OR (employee.Email = @Email));
	END')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspSelectEmployees' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspSelectEmployees
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT 
			employee.EmployeeID,
			employee.IDNumber,
			dbo.udfGetEmployeeFullName(employee.IDNumber) AS FullName,
			dbo.udfGetEmployeeAddress(employee.AddressID) AS Address,
			employee.Email,
			employee.Phone,
			role.RoleName AS Role,
			store.StoreName AS Store
		FROM Employee AS employee
		JOIN Store AS store ON employee.StoreID = store.StoreID
		JOIN RolePermission AS rolePermission ON employee.RolePermissionID = rolePermission.RolePermissionID
		JOIN Role AS role ON rolePermission.RoleID = role.RoleID
	END')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspSelectSaleProduct' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspSelectSaleProduct
		@SaleID INT
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT 
			dbo.udfGetBaseProductName(saleproduct.BaseProductID) AS ProductName,
			saleproduct.SellingPrice,
			saleproduct.Quantity
		FROM SaleProduct AS saleproduct
	END')
GO




/*******************************************************************************************************************************************
*														CREATE INSERT STORED PROCEDURES	 												   *
********************************************************************************************************************************************/

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertCompany' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertCompany
		@CompanyName VARCHAR(50),
		@DateOfEstablish DATE,
		@Description VARCHAR(100)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Company VALUES(@CompanyName, @DateOfEstablish, @Description);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertProvince' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertProvince
		@ProvinceName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Province VALUES(@ProvinceName);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertCity' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertCity
		@CityName VARCHAR(50),
		@ProvinceID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO City VALUES(@CityName, @ProvinceID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertSuburb' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertSuburb
		@SuburbName VARCHAR(50),
		@PostalCode CHAR(4),
		@CityID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Suburb VALUES(@SuburbName, @PostalCode, @CityID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertAddress' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertAddress
		@AddressName VARCHAR(50),
		@SuburbID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Address VALUES(@AddressName, @SuburbID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertOperationalCostType' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertOperationalCostType
		@Name VARCHAR(100),
		@Description VARCHAR(100)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO OperationalCostType VALUES(@Name, @Description);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertOperationalCost' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertOperationalCost
		@OperationalCostTypeID INT,
		@Amount DECIMAL(20,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO OperationalCost VALUES(@OperationalCostTypeID, @Amount);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertStoreOperationalCost' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertStoreOperationalCost
		@StoreID INT,
		@OperationalCostTypeID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO StoreOperationalCost VALUES(@StoreID, @OperationalCostTypeID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertStoreType' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertStoreType
		@TypeName VARCHAR(40)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO StoreType VALUES(@TypeName);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertStore' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertStore
		@StoreName VARCHAR(50),
		@TypeID INT,
		@CompanyID INT,
		@AddressID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Store VALUES(@StoreName, @TypeID, @CompanyID, @AddressID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertRole' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertRole
		@RoleName VARCHAR(50),
		@Description VARCHAR(100)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Role VALUES(@RoleName, @Description);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertPermission' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertPermission
		@PermissionName VARCHAR(50),
		@Description VARCHAR(100)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Permission VALUES(@PermissionName, @Description);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertRolePermission' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertRolePermission
		@RoleID INT,
		@PermissionID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO RolePermission VALUES(@RoleID, @PermissionID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertEmployee' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertEmployee
		@IDNumber BIGINT,
		@FirstName VARCHAR(40),
		@LastName VARCHAR(50),
		@AddressID INT,
		@Email VARCHAR(20),
		@Phone CHAR(10),
		@RolePermissionID INT,
		@StoreID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Employee VALUES(@IDNumber, @FirstName, @LastName, @AddressID, @Email, @Phone, @RolePermissionID, @StoreID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertMarkup' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertMarkup
		@MarkupValue DECIMAL(10,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Markup VALUES(@MarkupValue);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertDeal' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertDeal
		@DealName VARCHAR(60),
		@StartDate DATE = NULL,
		@EndDate DATE = NULL,
		@Description VARCHAR(100),
		@MarkupID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Deal VALUES(@DealName, ISNULL(@StartDate, dbo.udfGetFirstDayOfYear()), ISNULL(@EndDate, dbo.udfGetLastDayOfYear()), @Description, @MarkupID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertProductTax' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertProductTax
		@TaxDescription VARCHAR(30),
		@TaxValue DECIMAL(10,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO ProductTax VALUES(@TaxDescription, @TaxValue);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertSupplier' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertSupplier
		@Name VARCHAR(60),
		@Email VARCHAR(20),
		@Phone CHAR(10),
		@AddressID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Supplier VALUES(@Name, @Email, @Phone, @AddressID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertOrder' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertOrder
		@SupplierID INT,
		@StoreID INT,
		@OrderDate DATE,
		@EmployeeID INT,
		@OrderStatus VARCHAR(20),
		@DateReceived DATE
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO Order VALUES(@SupplierID, @StoreID, @OrderDate, @EmployeeID, @OrderStatus, @DateReceived);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertSupplierOrder' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertSupplierOrder
		@SupplierID INT,
		@OrderID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO SupplierOrder VALUES(@SupplierID, @OrderID);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspInsertOrderProduct' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspInsertOrderProduct
		@SubCategoryID INT,
		@OrderID INT,
		@Quantity DECIMAL(10,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			INSERT INTO OrderProduct VALUES(@SubCategoryID, @OrderID, @Quantity);
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO




/*******************************************************************************************************************************************
*														CREATE UPDATE STORED PROCEDURES	 												   *
********************************************************************************************************************************************/

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateCompanyDescription' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateCompanyDescription
		@CompanyName VARCHAR(50),
		@Description VARCHAR(100)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Company
			SET Description = @Description
			WHERE CompanyName = @CompanyName;
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateStoreType' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateStoreType
		@OldTypeName VARCHAR(40),
		@NewTypeName VARCHAR(40)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE StoreType
			SET TypeName = @NewTypeName
			WHERE TypeName = @OldTypeName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateStoreName' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateStoreName
		@OLDStoreName VARCHAR(50),
		@NewStoreName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Store
			SET StoreName = @NewStoreName
			WHERE StoreName = @OldStoreName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateEmployeeName' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateEmployeeName
		@IDNumber BIGINT,
		@FirstName VARCHAR(40),
		@LastName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Employee
			SET 
				FirstName = @FirstName,
				LastName = @LastName
			WHERE IDNumber = @IDNumber
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateEmployeeEmail' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateEmployeeEmail
		@OldEmail VARCHAR(20),
		@NewEmail VARCHAR(20)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Employee
			SET Email = @NewEmail
			WHERE Email = @OldEmail
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateEmployeePhone' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateEmployeePhone
		@OldPhone CHAR(10),
		@NewPhone CHAR(10)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Employee
			SET Phone = @NewPhone
			WHERE Phone = @OldPhone
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateEmployeeRole' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateEmployeeRole
		@IDNumber BIGINT,
		@RoleName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DECLARE @RolePermissionID INT;
			SELECT @RolePermissionID = rolePermission.RolePermissionID
			FROM RolePermission as rolePermission
			LEFT JOIN Role AS role ON rolePermission.roleID = role.roleID
			WHERE role.roleName = @RoleName;

			UPDATE Employee
			SET RolePermissionID = @RolePermissionID
			WHERE IDNumber = @IDNumber
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateEmployeeStore' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateEmployeeStore
		@IDNumber BIGINT,
		@StoreName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DECLARE @StoreID INT;
			SELECT @StoreID = StoreID FROM Store WHERE StoreName = @StoreName;

			UPDATE Employee
			SET StoreID = @StoreID
			WHERE IDNumber = @IDNumber
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateDeal' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateDeal
		@DealName VARCHAR(60),
		@Description VARCHAR(100) = NULL,
		@MarkupID INT = NULL
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Deal
			SET 	
				Description = ISNULL(@Description, Description),
				MarkupID = ISNULL(@MarkupID, MarkupID)
			WHERE DealName = @DealName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateDealDates' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateDealDates
		@DealName VARCHAR(60),
		@StartDate DATE,
		@EndDate DATE
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Deal
			SET 	
				StartDate = @StartDate,
				EndDate = @EndDate
			WHERE DealName = @DealName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateProductTaxValue' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE upsUpdateProductTaxValue
		@TaxDescription VARCHAR(30),
		@TaxValue DECIMAL(10,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE ProductTax
			SET ProductTaxValue = @TaxValue
			WHERE ProductTaxDescription = @TaxDescription
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateProductTaxDescription' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateProductTaxDescription
		@TaxDescription VARCHAR(30),
		@TaxID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE ProductTax
			SET ProductTaxDescription = @TaxDescription
			WHERE ProductTaxID = @TaxID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO 

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateSupplierEmail' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateSupplierEmail
		@SupplierName VARCHAR(60),
		@Email VARCHAR(20)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Supplier
			SET Email = @Email
			WHERE Name = @SupplierName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO 

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateSupplierPhone' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateSupplierPhone
		@SupplierName VARCHAR(60),
		@Phone VARCHAR(10)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Supplier
			SET Email = @Email
			WHERE Phone = @Phone
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO 

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateOrderStatus' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateOrderStatus
		@OrderID INT,
		@OrderStatus VARCHAR(20)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Order
			SET OrderStatus = @OrderStatus
			WHERE OrderID = @OrderID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO 

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspUpdateOrderDateReceived' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspUpdateOrderDateReceived
		@OrderID INT,
		@DateReceived DATE
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			UPDATE Order
			SET DateReceived = @DateReceived
			WHERE OrderID = @OrderID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
			VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO




/*******************************************************************************************************************************************
*														CREATE DELETE STORED PROCEDURES	 												   *
********************************************************************************************************************************************/

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteCity' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteCity
		@CityName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM City
			WHERE CityName = @CityName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteSuburb' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteSuburb
		@SuburbName VARCHAR(50) = NULL,
		@PostalCode CHAR(40) = NULL
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Suburb
			WHERE 
				(@SuburbName IS NULL OR (SuburbName = @SuburbName)) AND
				(@PostalCode IS NULL OR (PostalCode = @PostalCode))
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteStoreType' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteStoreType
		@TypeName VARCHAR(40)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM StoreType
			WHERE TypeName = @TypeName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteStore' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteStore
		@StoreName VARCHAR(50)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Store
			WHERE StoreName = @StoreName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteEmployee' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteEmployee
		@IDNumber BIGINT = NULL
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Employee
			WHERE IDNumber = @IDNumber
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteMarkup' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteMarkup
		@MarkupValue DECIMAL(10,2)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Markup
			WHERE MarkupValue = @MarkupValue
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteDeal' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteDeal
		@DealName VARCHAR(60)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Deal
			WHERE DealName = @DealName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteProductTax' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteProductTax
		@TaxDescription VARCHAR(30)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM ProductTax
			WHERE ProductTaxDescription = @TaxDescription
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteSupplier' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteSupplier
		@SupplierName VARCHAR(60)
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Supplier
			WHERE Name = @SupplierName
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteOrder' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteOrder
		@OrderID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM Order
			WHERE OrderID = @OrderID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteOrderProduct' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteOrderProduct
		@OrderID INT,
		@SubCategoryID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM OrderProduct
			WHERE OrderID = @OrderID AND SubCategoryID = @SubCategoryID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='uspDeleteSupplierOrder' AND objectproperty(object_id,'IsProcedure') = 1)
EXEC('CREATE PROCEDURE uspDeleteSupplierOrder
		@OrderID INT,
		@SupplierID INT
	AS
	BEGIN TRY
		SET NOCOUNT ON;
		BEGIN TRANSACTION
			DELETE FROM SupplierOrder
			WHERE OrderID = @OrderID AND SupplierID = @SupplierID
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		INSERT INTO Errors
    		VALUES(SUSER_SNAME(), ERROR_NUMBER(), ERROR_STATE(), ERROR_SEVERITY(), ERROR_LINE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), GETDATE());
	END CATCH')
GO




/*******************************************************************************************************************************************
*														CREATE USER DEFINED FUNCTIONS	 												   *
********************************************************************************************************************************************/

CREATE FUNCTION udfGetFirstDayOfYear ()
RETURNS DATE
AS
BEGIN
	RETURN CAST(DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) AS DATE);
END
GO

CREATE FUNCTION udfGetLastDayOfYear ()
RETURNS DATE
AS
BEGIN
	RETURN CAST(DATEADD (dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) +1, 0)) AS DATE);
END
GO

CREATE FUNCTION udfGetEmployeeDOB (@IDNumber BIGINT)
RETURNS DATE
AS
BEGIN
	RETURN CAST(LEFT(@IDNumber, 6) AS DATE);
END
GO

CREATE FUNCTION udfGetNumberOfEmployeesForStore (@StoreID INT)
RETURNS INT
AS
BEGIN
	RETURN (SELECT COUNT(StoreID) FROM Employee WHERE StoreID = @StoreId);
END
GO

CREATE FUNCTION udfGetEmployeeFullName (@IDNumber BIGINT)
RETURNS VARCHAR(60)
AS
BEGIN
	RETURN (SELECT CONCAT(FirstName, ' ', LastName) FROM Employee WHERE IDNumber = @IDNumber);
END
GO

CREATE FUNCTION udfGetEmployeeAddress (@AddressId INT)
RETURNS VARCHAR(200)
AS
BEGIN
	DECLARE @Address VARCHAR(50);
	DECLARE @Suburb VARCHAR(50);
	DECLARE @City VARCHAR(50);
	DECLARE @Province VARCHAR(50);
	DECLARE @PostalCode CHAR(4);
	
	SELECT @Address = address.AddressName, @Suburb = suburb.SuburbName, @PostalCode = suburb.PostalCode, @City = city.CityName, @Province = province.ProvinceName
	FROM Address address
	LEFT JOIN Suburb AS suburb ON address.SuburbID = suburb.SuburbID
	LEFT JOIN City AS city ON suburb.CityID = city.CityID
	LEFT JOIN Province AS province ON city.ProvinceID = province.ProvinceID
	WHERE address.AddressID = @AddressID

	RETURN (SELECT CONCAT(@Address, ', ', @Suburb, ', ', @City, ', ', @Province, ', ', @PostalCode));
END
GO

CREATE FUNCTION udfGetBaseProductName (@BaseProductID INT)
RETURNS VARCHAR(50)
AS
BEGIN
	RETURN (SELECT BaseProductName From BaseProduct WHERE BaseProductID = @BaseProductID);
END
GO

CREATE FUNCTION udfGetSuburbID (@SuburbName VARCHAR(50))
RETURNS INT
AS
BEGIN
	RETURN (SELECT SuburbID FROM Suburb WHERE SuburbName = @SuburbName);
END
GO

CREATE FUNCTION udfGetCityID (@CityName VARCHAR(50))
RETURNS INT
AS
BEGIN
	RETURN (SELECT CityID FROM City WHERE CityName = @CityName);
END
GO

CREATE FUNCTION udfGetProvinceID (@ProvinceName VARCHAR(50))
RETURNS INT
AS
BEGIN
	RETURN (SELECT ProvinceID FROM Province WHERE ProvinceName = @ProvinceName);
END
GO
