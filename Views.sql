
/****** CREATE DATABASE  ******/
USE GenericCompanyDB;
GO
/****** CREATE DATABASE END  ******/

-- Create view that shows baseproduct with all attributes and values

/****** Create Views  ******/


IF NOT EXISTS (SELECT * FROM sys.objects WHERE name = 'vProduct' AND objectproperty(object_id,'IsView') = 1)
EXEC ( 'CREATE VIEW vProduct
AS
	SELECT product.BaseProductName, product.BaseProductPicture, product.BaseProductDescription, value.ProductValValue, attribute.ProductAttributeName
	FROM BaseProduct product
	JOIN ProductValue value ON product.BaseProductID = value.BaseProductID
	JOIN ProductAttribute attribute ON value.ProductAttributeID = attribute.ProductAttributeID
	;')
GO
SELECT * FROM vProduct;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vAllStaff' AND objectproperty(object_id,'IsView') = 1)
EXEC( 'CREATE VIEW vAllStaff
AS
	SELECT FirstName, LastName, Email, Phone, dbo.udfGetEmployeeDOB(IDNumber) DOB, dbo.udfGetEmployeeAddress(AddressID) Address
	FROM Employee;')
GO
SELECT * FROM vAllStaff;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vStore' AND objectproperty(object_id,'IsView') = 1)
EXEC('CREATE VIEW vStore
AS
	SELECT company.CompanyName,store.StoreName
	FROM Company company, Store store	
	WHERE company.CompanyID = store.CompanyID;')
GO
SELECT * FROM vStore ;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vGetNumberOfEmployees' AND objectproperty(object_id,'IsView') = 1)
EXEC('CREATE VIEW vGetNumberOfEmployees
AS
	SELECT dbo.udfGetNumberOfEmployeesForStore(1) AS Number_Of_Employees_For_Store;')
GO
SELECT * FROM vGetNumberOfEmployees;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vEmployeeDateOfBirth' AND objectproperty(object_id,'IsView') = 1)
EXEC('CREATE VIEW vEmployeeDateOfBirth
AS
	SELECT dbo.udfGetEmployeeDOB(IDNumber) AS DOB
	FROM Employee;')
GO
SELECT * FROM vEmployeeDateOfBirth;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vOrderStatus' AND objectproperty(object_id,'IsView') = 1)
EXEC('CREATE VIEW vOrderStatus
AS
	SELECT dbo.udfGetOrderStatus(1) AS Order_Status;')
GO
SELECT * FROM vOrderStatus;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE name='vOrdersCreatedByEmployee' AND objectproperty(object_id,'IsView') = 1)
EXEC('CREATE VIEW vOrdersCreatedByEmployee
AS
	SELECT * FROM dbo.udfGetOrdersCreatedByAnEmployee(5);')
GO
SELECT * FROM vOrdersCreatedByEmployee;




/****** Create Views end ******/
