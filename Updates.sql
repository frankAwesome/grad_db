/****** UPDATE TABLES  ******/
USE GenericCompanyDB;
GO

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