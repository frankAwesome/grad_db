
/****** CREATE DATABASE  ******/
CREATE DATABASE GenericCompanyDB;
GO

USE GenericCompanyDB;
GO
/****** CREATE DATABASE END  ******/

/****** Create Views  ******/

CREATE VIEW vAllStaff
AS
SELECT FirstName,
LastName,
Email,
Phone
FROM Employee;
GO

SELECT * FROM vAllStaff;

CREATE VIEW vStore
AS
SELECT c.CompanyName,s.StoreName
FROM Company c,Store s	
WHERE c.CompanyID =s.CompanyID;
GO

SELECT * FROM vStore;

CREATE VIEW vGetNumberOfEmployees
AS
SELECT dbo.udfGetNumberOfEmployeesForStore('1')  Num_Emp
GO

SELECT * FROM vGetNumberOfEmployees;

CREATE VIEW vEmployeeAddress	
AS
SELECT dbo.udfGetEmployeeAddress('4') Emp_Address
GO

SELECT * FROM vEmployeeAddress;

/****** Create Views end ******/


