USE GenericCompanyDB;
GO

EXEC uspDeleteCity 'Boksburg';

EXEC uspDeleteSuburbByName 'Grand Phurno';
EXEC uspDeleteSuburbByPostalCode '9899';

EXEC uspDeleteStore 'Braams Toyota';

EXEC uspDeleteEmployee '1804122625730';

EXEC uspDeleteDeal 'Summer Sale';

EXEC uspDeleteBaseProduct 1;