USE GenericCompanyDB;
GO

SELECT dbo.udfGetEmployeeDOB(9803180097089) AS DOB;

SELECT dbo.udfGetNumberOfEmployeesForStore(3) AS NoOfEmployeesForStore;

SELECT * FROM dbo.udfGetOrdersForStore('Checkers Rock Cottage');

SELECT * FROM dbo.udfGetOrdersForSupplier('Supplier One');

SELECT dbo.udfGetOrderStatus(1) AS OrderStatus;

SELECT * FROM dbo.udfGetProductsOfAnOrder(1);

SELECT * FROM dbo.udfGetOrdersCreatedByAnEmployee(1);

SELECT * FROM dbo.udfGetOrdersByStatus('Order Delivered');