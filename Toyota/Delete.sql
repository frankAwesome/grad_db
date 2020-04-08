USE GenericCompanyDB;
GO

EXEC uspDeleteCity 'Boksburg';

EXEC uspDeleteSuburbByName 'Grand Phurno';
EXEC uspDeleteSuburbByPostalCode '9899';

EXEC uspDeleteStore 'Braams Toyota';

EXEC uspDeleteEmployee 1982614249178;

EXEC uspDeleteDeal 'Summer Sale';

EXEC uspDeleteBaseProduct 1;