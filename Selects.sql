/****** SELECT TABLES  ******/
USE GenericCompanyDB;
GO

SELECT a.CompanyName,a.DateOfEstablish,a.Description
FROM Company a

SELECT a.AddressName,b.SuburbName,b.Postalcode,c.CityName
FROM Address a
JOIN Suburb b ON a.SuburbID=b.SuburbID
JOIN City c ON b.CityID=c.CityID

SELECT a.StoreName,b.AddressName,c.SuburbName,c.Postalcode,d.CityName,e.CompanyName
FROM Store a
JOIN Address b ON a.AddressID=b.AddressID
JOIN Suburb c ON b.SuburbID=c.SuburbID
JOIN City d ON c.CityID=d.CityID
JOIN Company e ON e.CompanyID=a.CompanyID

EXEC uspSelectEmployees;
EXEC uspSelectEmployee 9803180097089;

SELECT *
FROM BaseProduct

/****** SELECT TABLES END  ******/