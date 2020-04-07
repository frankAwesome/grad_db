
/****** CREATE DATABASE  ******/
USE GenericCompanyDB;
GO
/****** CREATE DATABASE END  ******/

-- Create view that shows baseproduct with all attributes and values

/****** Create Views  ******/

CREATE VIEW vAllStaff
AS
SELECT FirstName,
LastName,
Email,
Phone
FROM dbo.Employee;
GO
SELECT * FROM vAllStaff;


CREATE VIEW vStore
AS
SELECT c.CompanyName,s.StoreName
FROM Company c,Store s	
WHERE c.CompanyID =s.CompanyID

GO
SELECT * FROM vStore ;



CREATE VIEW vGetNumberOfEmployees
AS
SELECT dbo.udfGetNumberOfEmployeesForStore('1')  Number_Emp
GO
SELECT * FROM vGetNumberOfEmployees;


CREATE VIEW vEmployeeAddress	
AS
SELECT dbo.udfGetEmployeeAddress('4') Emp_Address
GO
SELECT * FROM vEmployeeAddress;



CREATE VIEW Emp_DateOfBirth
AS
SELECT dbo.udfGetEmployeeDOB(9803180097089) AS DOB
GO
SELECT * FROM Emp_DateOfBirth;


CREATE VIEW vOrderStatus
AS
SELECT dbo.udfGetOrderStatus(1) AS OrderStatus;
GO
SELECT * FROM vOrderStatus;


CREATE VIEW vOrdersCreated5
AS
SELECT * FROM dbo.udfGetOrdersCreatedByAnEmployee(5)
GO
SELECT * FROM vOrdersCreated5;




/****** Create Views end ******/


