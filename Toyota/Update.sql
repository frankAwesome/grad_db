USE GenericCompanyDB;
GO

EXEC uspUpdateCompanyDescription 'Toyota', 'New company description';

EXEC uspUpdateStoreName 'Braams Toyota', 'Braam Toyota';

EXEC uspUpdateEmployeeName 1804522625730, 'Lewis','Rochas';

EXEC uspUpdateEmployeeEmail 'lewisRocha@gmail.com', 'lewisRochas@gmail.com';

EXEC uspUpdateEmployeeRole 1804522625730, 'CFO';

EXEC uspUpdateEmployeeStore 1804522625730, 'Braams Toyota';

EXEC uspUpdateDeal 'January Sale', NULL, 5;
EXEC uspUpdateDealDates 'January Sale', '2020-01-10', '2020-01-30';