USE GenericCompanyDB;
GO

EXEC uspUpdateCompanyDescription 'Checkers', 'New company description';

EXEC uspUpdateStoreType 'Food Store', 'Whole Food Saler';

EXEC uspUpdateStoreName 'Checkers Hyper FX Mall Of Africa', 'Checkers Hype Mall Of Africa';

EXEC uspUpdateEmployeeName '1804122625730', 'Lewis','Rochas';

EXEC uspUpdateEmployeeEmail 'lewisRocha@gmail.com', 'lewisRochas@gmail.com';

EXEC uspUpdateEmployeeRole '1804122625730', 'CFO';

EXEC uspUpdateEmployeeStore '1804122625730', 'Checkers Hype Mall Of Africa';

EXEC uspUpdateDeal 'January Sale', NULL, 5;
EXEC uspUpdateDealDates 'January Sale', '2020-01-10', '2020-01-30';