USE GenericCompanyDB;
GO

EXEC uspInsertCompany 'Checkers', '1970-05-10', 'Checkers description';

EXEC uspInsertProvince 'Eastern Cape'
EXEC uspInsertProvince 'Free State'
EXEC uspInsertProvince 'Gauteng'
EXEC uspInsertProvince 'KwaZulu-Natal'
EXEC uspInsertProvince 'Limpopo'
EXEC uspInsertProvince 'Mpumalanga'
EXEC uspInsertProvince 'North West'
EXEC uspInsertProvince 'Northern Cape'
EXEC uspInsertProvince 'Western Cape'

EXEC uspInsertCity 'Alice', 1
EXEC uspInsertCity 'Butterworth', 1
EXEC uspInsertCity 'East London', 1
EXEC uspInsertCity 'Graaff-Reinet', 1
EXEC uspInsertCity 'Grahamstown', 1
EXEC uspInsertCity 'King William�s Town', 2
EXEC uspInsertCity 'Mthatha', 2
EXEC uspInsertCity 'Port Elizabeth', 2
EXEC uspInsertCity 'Queenstown', 2
EXEC uspInsertCity 'Uitenhage', 2
EXEC uspInsertCity 'Zwelitsha', 3
EXEC uspInsertCity 'Bethlehem', 3
EXEC uspInsertCity 'Bloemfontein', 3
EXEC uspInsertCity 'Jagersfontein', 3
EXEC uspInsertCity 'Kroonstad', 3
EXEC uspInsertCity 'Odendaalsrus', 4
EXEC uspInsertCity 'Parys', 4
EXEC uspInsertCity 'Phuthaditjhaba', 4
EXEC uspInsertCity 'Sasolburg', 4
EXEC uspInsertCity 'Virginia', 4
EXEC uspInsertCity 'Welkom', 5
EXEC uspInsertCity 'Benoni', 5
EXEC uspInsertCity 'Boksburg', 5
EXEC uspInsertCity 'Carletonville', 5
EXEC uspInsertCity 'Germiston', 5
EXEC uspInsertCity 'Johannesburg', 6
EXEC uspInsertCity 'Krugersdorp', 6
EXEC uspInsertCity 'Pretoria', 6
EXEC uspInsertCity 'Randburg', 6
EXEC uspInsertCity 'Randfontein', 6
EXEC uspInsertCity 'Roodepoort', 7
EXEC uspInsertCity 'Soweto', 7
EXEC uspInsertCity 'Springs', 7
EXEC uspInsertCity 'Vanderbijlpark', 7
EXEC uspInsertCity 'Vereeniging', 7
EXEC uspInsertCity 'Durban', 8
EXEC uspInsertCity 'Empangeni', 8
EXEC uspInsertCity 'Ladysmith', 8
EXEC uspInsertCity 'Newcastle', 8
EXEC uspInsertCity 'Pietermaritzburg', 8
EXEC uspInsertCity 'Pinetown', 9
EXEC uspInsertCity 'Ulundi', 9
EXEC uspInsertCity 'Umlazi', 9
EXEC uspInsertCity 'Giyani', 9
EXEC uspInsertCity 'Lebowakgomo',9 
EXEC uspInsertCity 'Musina',1
EXEC uspInsertCity 'Phalaborwa',2
EXEC uspInsertCity 'Polokwane',3
EXEC uspInsertCity 'Seshego',4
EXEC uspInsertCity 'Sibasa',5
EXEC uspInsertCity 'Thabazimbi',6
EXEC uspInsertCity 'Emalahleni',7
EXEC uspInsertCity 'Nelspruit',8
EXEC uspInsertCity 'Secunda',9
EXEC uspInsertCity 'Klerksdorp',1
EXEC uspInsertCity 'Mahikeng',2
EXEC uspInsertCity 'Mmabatho',3
EXEC uspInsertCity 'Potchefstroom',4
EXEC uspInsertCity 'Rustenburg',5
EXEC uspInsertCity 'Kimberley',6
EXEC uspInsertCity 'Kuruman',7
EXEC uspInsertCity 'Port Nolloth',8
EXEC uspInsertCity 'Bellville',9
EXEC uspInsertCity 'Cape Town',1
EXEC uspInsertCity 'Constantia',2
EXEC uspInsertCity 'George',3
EXEC uspInsertCity 'Hopefield',4
EXEC uspInsertCity 'Oudtshoorn',5
EXEC uspInsertCity 'Paarl',6
EXEC uspInsertCity 'Simon�s Town',7
EXEC uspInsertCity 'Stellenbosch',8
EXEC uspInsertCity 'Swellendam',9

EXEC uspInsertSuburb 'Termabins','5852' ,1
EXEC uspInsertSuburb 'Leclaustash Bay','6332' ,2
EXEC uspInsertSuburb 'Stret','8106' ,3
EXEC uspInsertSuburb 'North Larang','1234' ,4
EXEC uspInsertSuburb 'New Sques','5438' ,5
EXEC uspInsertSuburb 'Greanraw Springs','7817' ,6
EXEC uspInsertSuburb 'Bairnsnewrsea','1336' ,7
EXEC uspInsertSuburb 'Latheannewood','2614' ,8
EXEC uspInsertSuburb 'Sainstone','9822' ,9
EXEC uspInsertSuburb 'Worthport','6691' ,10
EXEC uspInsertSuburb 'St Whaboostone','6126' ,11
EXEC uspInsertSuburb 'Swafporttain','0131' ,12
EXEC uspInsertSuburb 'Royal Woodfronlei','8981' ,13
EXEC uspInsertSuburb 'Stonechuwilljaw','9182' ,14
EXEC uspInsertSuburb 'La Saintewat','0119' ,15
EXEC uspInsertSuburb 'Hes','8255' ,16
EXEC uspInsertSuburb 'Lomclaire With Cogwa','5575' ,17
EXEC uspInsertSuburb 'Snodtro Du Bramle River','9135' ,18
EXEC uspInsertSuburb 'Rilwkes','2943' ,19
EXEC uspInsertSuburb 'Lilac Aux Ncaquet','1654' ,20
EXEC uspInsertSuburb 'Grand Phurno','0036' ,21
EXEC uspInsertSuburb 'Lake Knobwin With Stayarm','9899' ,22
EXEC uspInsertSuburb 'Worthstaington','9977' ,23
EXEC uspInsertSuburb 'New Cliffeskeard','7683' ,24
EXEC uspInsertSuburb 'Park Dratigee','7403' ,25
EXEC uspInsertSuburb 'Nesrket Creek','9284' ,26
EXEC uspInsertSuburb 'North Facncisred','4871' ,27
EXEC uspInsertSuburb 'Amthorpecombe','3695' ,28
EXEC uspInsertSuburb 'Tergan River','6767' ,29
EXEC uspInsertSuburb 'Royal Felsktownor','5290' ,30
EXEC uspInsertSuburb 'Great Wkenbing','8088' ,31
EXEC uspInsertSuburb 'Paboysmoeburgh','0863' ,32
EXEC uspInsertSuburb 'Porthsu','7771' ,33
EXEC uspInsertSuburb 'Mutem','4583' ,34
EXEC uspInsertSuburb 'Buroyal-On-River','4238' ,35
EXEC uspInsertSuburb 'Dsormun','1188' ,36
EXEC uspInsertSuburb 'Meadiostone','0994' ,37
EXEC uspInsertSuburb 'Marsh','5880' ,38
EXEC uspInsertSuburb 'West Nish','2897' ,39
EXEC uspInsertSuburb 'East Vilssalthar','3972' ,40
EXEC uspInsertSuburb 'Nersnis','2481' ,41
EXEC uspInsertSuburb 'West Kesmond','3521' ,42
EXEC uspInsertSuburb 'Bourkerangeford','8946' ,43
EXEC uspInsertSuburb 'Las Nyde','9707' ,44
EXEC uspInsertSuburb 'Videmoor','8385' ,45
EXEC uspInsertSuburb 'South Welfish','3799' ,46
EXEC uspInsertSuburb 'Port Wichnish','4086' ,47
EXEC uspInsertSuburb 'New Rioland','2219' ,48
EXEC uspInsertSuburb 'New Ralpert','9159' ,49
EXEC uspInsertSuburb 'Dodgeaz','2961' ,50
EXEC uspInsertSuburb 'Great Pocksttoom','3186' ,51
EXEC uspInsertSuburb 'Saint Rkernyon','7016' ,52
EXEC uspInsertSuburb 'Royal Stanmis','5204' ,53
EXEC uspInsertSuburb 'East Chelcum','9257' ,54
EXEC uspInsertSuburb 'Wamil Beach','7744' ,55
EXEC uspInsertSuburb 'Stoneliamel','7227' ,57
EXEC uspInsertSuburb 'Nahtra With Sawol','9428' ,58
EXEC uspInsertSuburb 'Ngamslow','7790' ,59
EXEC uspInsertSuburb 'North Thestea','0282' ,60
EXEC uspInsertSuburb 'Msallankmul','5476' ,61
EXEC uspInsertSuburb 'Port Bridgethend','6586' ,62
EXEC uspInsertSuburb 'Geonswor Creek','7320' ,63
EXEC uspInsertSuburb 'New Landmins Under Busstra','5400' ,64
EXEC uspInsertSuburb 'St Neautleinfea','5312' ,65
EXEC uspInsertSuburb 'North Dalden','1230' ,66
EXEC uspInsertSuburb 'Yorktees Aux Wleyprincesfield','5792' ,67
EXEC uspInsertSuburb 'Royal Byraundsbah','0706' ,68
EXEC uspInsertSuburb 'Leanswyn Lake','3808' ,69
EXEC uspInsertSuburb 'Tickap Point','8083' ,70
EXEC uspInsertSuburb 'El Lomproe','9786' ,71
EXEC uspInsertSuburb 'Prince Harneyvil','7518' ,72
EXEC uspInsertSuburb 'Red Ga','7272' ,1
EXEC uspInsertSuburb 'West Ed','4662' ,2
EXEC uspInsertSuburb 'Cape Din','3073' ,3
EXEC uspInsertSuburb 'Sheypington','6285' ,4
EXEC uspInsertSuburb 'Stainesyslewathminster','4129' ,5
EXEC uspInsertSuburb 'Colnchelrding','2469' ,6
EXEC uspInsertSuburb 'Lake Cloudcham-In-Dercam','4411' ,7
EXEC uspInsertSuburb 'Great Lakethou','0407' ,8
EXEC uspInsertSuburb 'Annesbramplake','9781' ,9
EXEC uspInsertSuburb 'Narnitegate','3355' ,10
EXEC uspInsertSuburb 'Mount Rimholmeblaise','3603' ,11
EXEC uspInsertSuburb 'Peles-In-Middore','8961' ,12
EXEC uspInsertSuburb 'Red Cranfrod With Wlerbru','7565' ,13
EXEC uspInsertSuburb 'Bridrayleanlda','3486' ,14
EXEC uspInsertSuburb 'Luisheadshead','3625' ,15
EXEC uspInsertSuburb 'Mount Rstontrance Aux Faisett','5322' ,16
EXEC uspInsertSuburb 'Nieswor With Trailthamtree','6978' ,17
EXEC uspInsertSuburb 'New Sion','9424' ,18
EXEC uspInsertSuburb 'La Tworthwing','9423' ,19
EXEC uspInsertSuburb 'Peancouton','7277' ,20

EXEC uspInsertAddress '777 Brockton Avenue',1
EXEC uspInsertAddress '30 Memorial Drive',2
EXEC uspInsertAddress '250 Hartford Avenue',3
EXEC uspInsertAddress '700 Oak Street',4
EXEC uspInsertAddress '66-4 Parkhurst Rd',5
EXEC uspInsertAddress '591 Memorial Dr',6
EXEC uspInsertAddress '55 Brooksby Village Way',7
EXEC uspInsertAddress '137 Teaticket Hwy',8
EXEC uspInsertAddress '42 Fairhaven Commons Way',9
EXEC uspInsertAddress '374 William S Canning Blvd',10
EXEC uspInsertAddress '121 Worcester Rd',11
EXEC uspInsertAddress '677 Timpany Blvd',12
EXEC uspInsertAddress '337 Russell St',13
EXEC uspInsertAddress '295 Plymouth Street',14
EXEC uspInsertAddress '1775 Washington St',15
EXEC uspInsertAddress '280 Washington Street',16
EXEC uspInsertAddress '20 Soojian Dr',17
EXEC uspInsertAddress '11 Jungle Road',18
EXEC uspInsertAddress '301 Massachusetts Ave',19
EXEC uspInsertAddress '780 Lynnway',20
EXEC uspInsertAddress '70 Pleasant Valley Street',21
EXEC uspInsertAddress '830 Curran Memorial Hwy',22
EXEC uspInsertAddress '1470 S Washington St',23
EXEC uspInsertAddress '506 State Road',24
EXEC uspInsertAddress '742 Main Street',25
EXEC uspInsertAddress '72 Main St',26
EXEC uspInsertAddress '200 Otis Street',27
EXEC uspInsertAddress '180 North King Street',28
EXEC uspInsertAddress '555 East Main St',29
EXEC uspInsertAddress '555 Hubbard Ave-Suite 12',30
EXEC uspInsertAddress '300 Colony Place',31
EXEC uspInsertAddress '301 Falls Blvd',32
EXEC uspInsertAddress '36 Paramount Drive',33
EXEC uspInsertAddress '450 Highland Ave',34
EXEC uspInsertAddress '1180 Fall River Avenue',35
EXEC uspInsertAddress '1105 Boston Road',36
EXEC uspInsertAddress '100 Charlton Road',37
EXEC uspInsertAddress '262 Swansea Mall Dr',38
EXEC uspInsertAddress '333 Main Street',39
EXEC uspInsertAddress '550 Providence Hwy',40
EXEC uspInsertAddress '352 Palmer Road',41
EXEC uspInsertAddress '3005 Cranberry Hwy Rt 6 28',42
EXEC uspInsertAddress '250 Rt 59',43
EXEC uspInsertAddress '141 Washington Ave Extension',44
EXEC uspInsertAddress '13858 Rt 31 W',45
EXEC uspInsertAddress '2055 Niagara Falls Blvd',46
EXEC uspInsertAddress '101 Sanford Farm Shpg Center',47
EXEC uspInsertAddress '297 Grant Avenue',48
EXEC uspInsertAddress '4133 Veterans Memorial Drive',49
EXEC uspInsertAddress '6265 Brockport Spencerport Rd',50
EXEC uspInsertAddress '5399 W Genesse St',51
EXEC uspInsertAddress '3191 County rd 10',52
EXEC uspInsertAddress '30 Catskill',53
EXEC uspInsertAddress '161 Centereach Mall',54
EXEC uspInsertAddress '3018 East Ave',55
EXEC uspInsertAddress '100 Thruway Plaza',56
EXEC uspInsertAddress '8064 Brewerton Rd',57
EXEC uspInsertAddress '5033 Transit Road',58
EXEC uspInsertAddress '3949 Route 31',59
EXEC uspInsertAddress '139 Merchant Place',60
EXEC uspInsertAddress '85 Crooked Hill Road',61
EXEC uspInsertAddress '872 Route 13',62
EXEC uspInsertAddress '279 Troy Road',63
EXEC uspInsertAddress '2465 Hempstead Turnpike',64
EXEC uspInsertAddress '6438 Basile Rowe',65
EXEC uspInsertAddress '25737 US Rt 11',66
EXEC uspInsertAddress '901 Route 110',67
EXEC uspInsertAddress '2400 Route 9',68
EXEC uspInsertAddress '10401 Bennett Road',69
EXEC uspInsertAddress '1818 State Route 3',70
EXEC uspInsertAddress '4300 Lakeville Road',71
EXEC uspInsertAddress '990 Route 5 20',72
EXEC uspInsertAddress '311 RT 9W',73
EXEC uspInsertAddress '200 Dutch Meadows Ln',74
EXEC uspInsertAddress '100 Elm Ridge Center Dr',75
EXEC uspInsertAddress '1549 Rt 9',76
EXEC uspInsertAddress '5360 Southwestern Blvd',77
EXEC uspInsertAddress '103 North Caroline St',78
EXEC uspInsertAddress '1000 State Route 36',79
EXEC uspInsertAddress '1400 County Rd 64',80
EXEC uspInsertAddress '135 Fairgrounds Memorial Pkwy',81
EXEC uspInsertAddress '2 Gannett Dr',82
EXEC uspInsertAddress '233 5th Ave Ext',83
EXEC uspInsertAddress '601 Frank Stottile Blvd',84
EXEC uspInsertAddress '350 E Fairmount Ave',85
EXEC uspInsertAddress '4975 Transit Rd',86
EXEC uspInsertAddress '579 Troy-Schenectady Road',87
EXEC uspInsertAddress '5783 So Transit Road',88
EXEC uspInsertAddress '7155 State Rt 12 S',89
EXEC uspInsertAddress '425 Route 31',90
EXEC uspInsertAddress '3222 State Rt 11',91
EXEC uspInsertAddress '200 Sunrise Mall',92
EXEC uspInsertAddress '43 Stephenville St',1
EXEC uspInsertAddress '750 Middle Country Road',2
EXEC uspInsertAddress '470 Route 211 East',3
EXEC uspInsertAddress '3133 E Main St',4
EXEC uspInsertAddress '288 Larkin',5
EXEC uspInsertAddress '41 Anawana Lake Road',6
EXEC uspInsertAddress '4765 Commercial Drive',7
EXEC uspInsertAddress '1201 Rt 300',8
EXEC uspInsertAddress '255 W Main St',9
EXEC uspInsertAddress '120 Commercial Parkway',10
EXEC uspInsertAddress '1400 Farmington Ave',11
EXEC uspInsertAddress '161 Berlin Road',12
EXEC uspInsertAddress '67 Newton Rd',13
EXEC uspInsertAddress '656 New Haven Ave',14
EXEC uspInsertAddress '69 Prospect Hill Road',15
EXEC uspInsertAddress '150 Gold Star Hwy',16
EXEC uspInsertAddress '900 Boston Post Road',17
EXEC uspInsertAddress '2300 Dixwell Ave',18
EXEC uspInsertAddress '495 Flatbush Ave',19
EXEC uspInsertAddress '180 River Rd',20
EXEC uspInsertAddress '420 Buckland Hills Dr',21
EXEC uspInsertAddress '1365 Boston Post Road',22
EXEC uspInsertAddress '1100 New Haven Road',23
EXEC uspInsertAddress '315 Foxon Blvd',24
EXEC uspInsertAddress '164 Danbury Rd',25
EXEC uspInsertAddress '3164 Berlin Turnpike',26
EXEC uspInsertAddress '474 Boston Post Road',27
EXEC uspInsertAddress '650 Main Ave',28
EXEC uspInsertAddress '680 Connecticut Avenue',29
EXEC uspInsertAddress '220 Salem Turnpike',30
EXEC uspInsertAddress '655 Boston Post Rd',31
EXEC uspInsertAddress '625 School Street',32
EXEC uspInsertAddress '80 Town Line Rd',33
EXEC uspInsertAddress '465 Bridgeport Avenue',34
EXEC uspInsertAddress '235 Queen St',35
EXEC uspInsertAddress '150 Barnum Avenue Cutoff',36
EXEC uspInsertAddress '970 Torringford Street',37
EXEC uspInsertAddress '844 No Colony Road',38
EXEC uspInsertAddress '910 Wolcott St',39
EXEC uspInsertAddress '155 Waterford Parkway No',40
EXEC uspInsertAddress '515 Sawmill Road',41
EXEC uspInsertAddress '2473 Hackworth Road',42
EXEC uspInsertAddress '630 Coonial Promenade Pkwy',43
EXEC uspInsertAddress '2643 Hwy 280 West',44
EXEC uspInsertAddress '540 West Bypass',45
EXEC uspInsertAddress '5560 Mcclellan Blvd',46
EXEC uspInsertAddress '1450 No Brindlee Mtn Pkwy',47
EXEC uspInsertAddress '1011 US Hwy 72 East',48
EXEC uspInsertAddress '973 Gilbert Ferry Road Se',49
EXEC uspInsertAddress '1717 South College Street',50
EXEC uspInsertAddress '701 Mcmeans Ave',51
EXEC uspInsertAddress '750 Academy Drive',52
EXEC uspInsertAddress '312 Palisades Blvd',53
EXEC uspInsertAddress '1600 Montclair Rd',54
EXEC uspInsertAddress '5919 Trussville Crossings Pkwy',55
EXEC uspInsertAddress '9248 Parkway East',56
EXEC uspInsertAddress '1972 Hwy 431',57
EXEC uspInsertAddress '10675 Hwy 5',58
EXEC uspInsertAddress '2041 Douglas Avenue',59
EXEC uspInsertAddress '5100 Hwy 31',60
EXEC uspInsertAddress '1916 Center Point Rd',61
EXEC uspInsertAddress '1950 W Main St',62
EXEC uspInsertAddress '16077 Highway 280',63
EXEC uspInsertAddress '1415 7Th Street South',64
EXEC uspInsertAddress '626 Olive Street Sw',65
EXEC uspInsertAddress '27520 Hwy 98',66
EXEC uspInsertAddress '2800 Spring Avn SW',67
EXEC uspInsertAddress '969 Us Hwy 80 West',68
EXEC uspInsertAddress '3300 South Oates Street',69
EXEC uspInsertAddress '4310 Montgomery Hwy',70
EXEC uspInsertAddress '600 Boll Weevil Circle',71
EXEC uspInsertAddress '3176 South Eufaula Avenue',72
EXEC uspInsertAddress '7100 Aaron Aronov Drive',73
EXEC uspInsertAddress '10040 County Road 48',74
EXEC uspInsertAddress '3186 Hwy 171 North',75
EXEC uspInsertAddress '3100 Hough Rd',76
EXEC uspInsertAddress '2200 South Mckenzie St',77
EXEC uspInsertAddress '2001 Glenn Bldv Sw',78
EXEC uspInsertAddress '340 East Meighan Blvd',79
EXEC uspInsertAddress '890 Odum Road',80
EXEC uspInsertAddress '1608 W Magnolia Ave',81
EXEC uspInsertAddress '501 Willow Lane',82
EXEC uspInsertAddress '170 Fort Morgan Road',83
EXEC uspInsertAddress '11697 US Hwy 431',84
EXEC uspInsertAddress '42417 Hwy 195',85
EXEC uspInsertAddress '1706 Military Street South',86
EXEC uspInsertAddress '1201 Hwy 31 NW',87
EXEC uspInsertAddress '209 Lakeshore Parkway',88
EXEC uspInsertAddress '2780 John Hawkins Pkwy',89
EXEC uspInsertAddress '5335 Hwy 280 South',90
EXEC uspInsertAddress '1007 Red Farmer Drive',91
EXEC uspInsertAddress '2900 S Mem PkwyDrake Ave',92
EXEC uspInsertAddress '11610 Memorial Pkwy South',1
EXEC uspInsertAddress '2200 Sparkman Drive',2
EXEC uspInsertAddress '330 Sutton Rd',3
EXEC uspInsertAddress '6140A Univ Drive',4
EXEC uspInsertAddress '4206 N College Ave',5
EXEC uspInsertAddress '1625 Pelham South',6
EXEC uspInsertAddress '1801 Hwy 78 East',7
EXEC uspInsertAddress '8551 Whitfield Ave',8
EXEC uspInsertAddress '8650 Madison Blvd',9
EXEC uspInsertAddress '145 Kelley Blvd',10
EXEC uspInsertAddress '1970 S University Blvd',11
EXEC uspInsertAddress '6350 Cottage Hill Road',12
EXEC uspInsertAddress '101 South Beltline Highway',13
EXEC uspInsertAddress '2500 Dawes Road',14
EXEC uspInsertAddress '5245 Rangeline Service Rd',15
EXEC uspInsertAddress '685 Schillinger Rd',16
EXEC uspInsertAddress '3371 S Alabama Ave',17
EXEC uspInsertAddress '10710 Chantilly Pkwy',18
EXEC uspInsertAddress '3801 Eastern Blvd',19
EXEC uspInsertAddress '6495 Atlanta Hwy',20
EXEC uspInsertAddress '851 Ann St',21
EXEC uspInsertAddress '15445 Highway 24',22
EXEC uspInsertAddress '517 West Avalon Ave',23
EXEC uspInsertAddress '5710 Mcfarland Blvd',24
EXEC uspInsertAddress '2453 2Nd Avenue East',25
EXEC uspInsertAddress '2900 Pepperrell Pkwy',26
EXEC uspInsertAddress '92 Plaza Lane',27
EXEC uspInsertAddress '1537 Hwy 231 South',28
EXEC uspInsertAddress '2181 Pelham Pkwy',29
EXEC uspInsertAddress '165 Vaughan Ln',30
EXEC uspInsertAddress '3700 Hwy 280-431 N',31
EXEC uspInsertAddress '1903 Cobbs Ford Rd',32
EXEC uspInsertAddress '4180 Us Hwy 431',33
EXEC uspInsertAddress '13675 Hwy 43',34
EXEC uspInsertAddress '1095 Industrial Pkwy',35
EXEC uspInsertAddress '24833 Johnt Reidprkw',36
EXEC uspInsertAddress '1501 Hwy 14 East',37
EXEC uspInsertAddress '7855 Moffett Rd',38
EXEC uspInsertAddress '150 Springville Station Blvd',39
EXEC uspInsertAddress '690 Hwy 78',40
EXEC uspInsertAddress '41301 US Hwy 280',41
EXEC uspInsertAddress '214 Haynes Street',42
EXEC uspInsertAddress '1300 Gilmer Ave',43
EXEC uspInsertAddress '34301 Hwy 43',44
EXEC uspInsertAddress '1420 Us 231 South',45
EXEC uspInsertAddress '1501 Skyland Blvd E',46
EXEC uspInsertAddress '3501 20th Av',47
EXEC uspInsertAddress '1300 Montgomery Highway',48
EXEC uspInsertAddress '4538 Us Hwy 231',49
EXEC uspInsertAddress '2575 Us Hwy 43',50

EXEC uspInsertRole 'CEO', 'CEO of the company'
EXEC uspInsertRole 'CFO', 'CFO of the company'
EXEC uspInsertRole 'COO', 'COO of the company'
EXEC uspInsertRole 'Regional Manager', 'Regional Manager for the company'
EXEC uspInsertRole 'General Manager', 'General Manager of a store'
EXEC uspInsertRole 'Cashier', 'Cashier runs a till in a store'
EXEC uspInsertRole 'Truck Driver', 'Truck Driver delivers products to and from stores'
EXEC uspInsertRole 'Shelf Packer', 'Shelf packer is responsible for stocking shelves in a store'
EXEC uspInsertRole 'Cleaner', 'Cleaner is responsible for cleaning a store'
EXEC uspInsertRole 'Butcher', 'Butcher manages meat for a store'

EXEC uspInsertPermission 'Super', 'Access to everything'
EXEC uspInsertPermission 'Admin', 'Ability to add, update, delete employees and other tables'
EXEC uspInsertPermission 'Store', 'Ability to open and close store'
EXEC uspInsertPermission 'Accounting/Billing', 'Access to all accounting and billing documents'
EXEC uspInsertPermission 'Records', 'Can view employee records'
EXEC uspInsertPermission 'Camera', 'Ability to view camera footage'
EXEC uspInsertPermission 'Till', 'Access to cashier tills'
EXEC uspInsertPermission 'No Permissions', 'This employee has no important permissions'

EXEC uspInsertRolePermission 1, 1
EXEC uspInsertRolePermission 2, 4
EXEC uspInsertRolePermission 3, 2
EXEC uspInsertRolePermission 4, 5
EXEC uspInsertRolePermission 5, 3
EXEC uspInsertRolePermission 6, 7
EXEC uspInsertRolePermission 7, 8
EXEC uspInsertRolePermission 8, 8
EXEC uspInsertRolePermission 9, 8
EXEC uspInsertRolePermission 10, 8

EXEC uspInsertStoreType 'Food Store'
EXEC uspInsertStoreType 'Liquer Store'
EXEC uspInsertStoreType 'Hyper Store'

EXEC uspInsertStore 'Checkers Rock Cottage', 1, 1, 1
EXEC uspInsertStore 'Checkers FX Fairlands', 1, 1, 51
EXEC uspInsertStore 'Checkers Allens Nek', 1, 1, 3
EXEC uspInsertStore 'Checkers Northgate', 1, 1, 4
EXEC uspInsertStore 'Checkers Cresta', 1, 1, 5
EXEC uspInsertStore 'Checkers Hyper FX Mall Of Africa', 3, 1, 6
EXEC uspInsertStore 'Checkers Hyper Roodepoort', 3, 1, 7
EXEC uspInsertStore 'Checkers Northriding', 1, 1, 8
EXEC uspInsertStore 'Checkers Bram Fischer', 1, 1, 9
EXEC uspInsertStore 'Checkers Hyper Westgate', 3, 1, 10
EXEC uspInsertStore 'Checkers Hyper FX Sandton', 3, 1, 11
EXEC uspInsertStore 'Checkers Rivonia Village', 1, 1, 52
EXEC uspInsertStore 'Checkers The Reef', 1, 1, 13
EXEC uspInsertStore 'Checkers Emmarentia', 1, 1, 14
EXEC uspInsertStore 'Checkers Bryanston', 1, 1, 15
EXEC uspInsertStore 'Checkers Nicolway', 1, 1, 53
EXEC uspInsertStore 'Checkers Southgate', 1, 1, 17
EXEC uspInsertStore 'Checkers Bryan Park', 1, 1, 18
EXEC uspInsertStore 'Checkers Hyper Eastgate', 3, 1, 19
EXEC uspInsertStore 'Checkers Glenvista', 1, 1, 20
EXEC uspInsertStore 'Checkers Columbine Square', 1, 1, 21
EXEC uspInsertStore 'Checkers Hyper Mall Of Carnival', 3, 1, 22
EXEC uspInsertStore 'Checkers Hyper Edenvale', 3, 1, 23
EXEC uspInsertStore 'Checkers FX The Glen', 1, 1, 24
EXEC uspInsertStore 'Checkers Hyper Boksburg', 3, 1, 25
EXEC uspInsertStore 'Checkers FX Mimosa Mall', 1, 1, 26
EXEC uspInsertStore 'Checkers Hyper Bloemfontein', 3, 1, 27
EXEC uspInsertStore 'Checkers Woodlands', 1, 1, 28
EXEC uspInsertStore 'Checkers Langenhovenpark', 1, 1, 29
EXEC uspInsertStore 'Checkers FX Preller Square', 1, 1, 54
EXEC uspInsertStore 'Checkers LiquorShop Woodlands', 2, 1, 31
EXEC uspInsertStore 'Checkers LiquorShop Langenhovenpark', 2, 1, 32
EXEC uspInsertStore 'Checkers Hyper Shallcross', 3, 1, 33
EXEC uspInsertStore 'Checkers Hyper Pavillion', 3, 1, 34
EXEC uspInsertStore 'Checkers Hyper Gateway', 3, 1, 35
EXEC uspInsertStore 'Checkers Kwadukuza', 1, 1, 36
EXEC uspInsertStore 'Checkers Davenport Rd', 1, 1, 37
EXEC uspInsertStore 'Checkers Scottsville', 1, 1, 38
EXEC uspInsertStore 'Checkers Overport', 1, 1, 39
EXEC uspInsertStore 'Checkers Durban North', 1, 1, 40
EXEC uspInsertStore 'Checkers Windermere', 1, 1, 41
EXEC uspInsertStore 'Checkers Westville', 1, 1, 42
EXEC uspInsertStore 'Checkers Hyper Brookside Mall', 3, 1, 43
EXEC uspInsertStore 'Checkers Gillitts', 1, 1, 44
EXEC uspInsertStore 'Checkers Hyper Galleria', 3, 1, 45
EXEC uspInsertStore 'Checkers Hillcrest', 1, 1, 46
EXEC uspInsertStore 'Checkers Watercrest', 1, 1, 47
EXEC uspInsertStore 'Checkers Reservoir Hills', 1, 1, 48
EXEC uspInsertStore 'Checkers Southway Mall', 1, 1, 49
EXEC uspInsertStore 'Checkers Queensburgh', 1, 1, 55

EXEC uspInsertOperationalCostType 'Water', 'Water for the store.'
EXEC uspInsertOperationalCostType 'Electricity', 'Electricity for the store'
EXEC uspInsertOperationalCostType 'Butcher clothing', 'Cloves, coats, and other items for butchers'
EXEC uspInsertOperationalCostType 'Fuel', 'Fuel for company cars'

EXEC uspInsertOperationalCost 1, 10000.00
EXEC uspInsertOperationalCost 2, 40000.00

EXEC uspInsertStoreOperationalCost 1, 1;
EXEC uspInsertStoreOperationalCost 1, 2;
EXEC uspInsertStoreOperationalCost 20, 2;
EXEC uspInsertStoreOperationalCost 20, 1;

EXEC uspInsertEmployee '1804122625730','Lewis','Rocha',186,'lewisRocha@gmail.com','0532680587',1,8
EXEC uspInsertEmployee '9203078498322','Shana','Santana',75,'shana@hotmail.org','0774846141',1,34
EXEC uspInsertEmployee '1206030267477','Denise','Herrera',123,'dHerrera@gmail.com','0611418307',5,24
EXEC uspInsertEmployee '1212013228274','Samson','Le',174,'samson@hotmail.org','0819175978',6,17
EXEC uspInsertEmployee '9704240046292','Jason','Graves',119,'gravesJ@gmail.com','0881392399',3,21
EXEC uspInsertEmployee '1901299978158','Kim','Barron',111,'KimBarron@gmail.com','0596158718',2,42
EXEC uspInsertEmployee '1905126011144','Jordan','Odom',60,'Jordan@htomail.co.za','0395305324',6,30
EXEC uspInsertEmployee '8909285603022','Nehru','Terry',18,'nTerry@hotmail.org','0337136924',1,9
EXEC uspInsertEmployee '1112075707894','Tad','Cote',81,'tadCote@gmail.com','0601187361',6,34
EXEC uspInsertEmployee '2203114249632','Adrienne','Case',8,'adrienne@gmail.com','0595852948',2,10
EXEC uspInsertEmployee '6802231122313','Tanek','Moreno',106,'tanekM@hotmail.org','0602207556',4,33
EXEC uspInsertEmployee '3805146242958','Joshua','Mendoza',87,'joshM@gmail.com','0305332053',3,14
EXEC uspInsertEmployee '5306246834265','Jeremy','Marquez',133,'jeremy@gmail.com','0921745478',5,21
EXEC uspInsertEmployee '1311306365555','Sierra','Schmidt',171,'sierraSch@hotmail.co.za','0635945749',4,1
EXEC uspInsertEmployee '1408178874163','Stacy','Davis',138,'stacey@gmailcom','0166363838',3,19
EXEC uspInsertEmployee '1407160022170','Kessie','Wilcox',67,'kessieWilcox@gmail.com','0412027386',5,20
EXEC uspInsertEmployee '3109053963216','Isabella','Rosa',91,'issarosa@gmail.com','0205050847',6,48
EXEC uspInsertEmployee '1003216535198','Rudyard','Horton',37,'rudy@hotmail.com','0815693190',6,14
EXEC uspInsertEmployee '4612018903725','Murphy','Russell',81,'murphRuss@gmail.com','0442928546',4,31
EXEC uspInsertEmployee '5612218436229','Giacomo','Schroeder',38,'giaSchroeder@hotmail.org','0717110083',2,12
EXEC uspInsertEmployee '1108297636739','Rose','Fisher',100,'rosie@gmail.com','0195005457',1,3
EXEC uspInsertEmployee '1912252496190','Zelda','Rhodes',96,'zeldaRhodes@gmail.com','0352926223',1,9
EXEC uspInsertEmployee '1301054604440','Yardley','Chen',167,'yardchen@gmail.co.za','0414891693',2,8
EXEC uspInsertEmployee '1303310047286','Hope','Padilla',70,'hopePhil@gmail.com','0096928446',3,43
EXEC uspInsertEmployee '8109269672277','Sara','Boyd',39,'saraboyd@hotmail.com','0561525383',1,50
EXEC uspInsertEmployee '1103149240828','Magee','Franklin',98,'mageeF@gmail.com','0898091720',4,24
EXEC uspInsertEmployee '1105034412921','Lillith','Burke',158,'lilli@gmail.com','0561809769',4,33
EXEC uspInsertEmployee '1802269623623','Cade','Kelly',183,'cadeK@hotmail.co.za','0757390829',5,31
EXEC uspInsertEmployee '8312031484225','Kylan','Bowers',130,'kylanbowers@gmail.com','0701829842',3,37
EXEC uspInsertEmployee '5512245562705','Victoria','Ortega',178,'vicky@gmail.com','0587241590',5,13
EXEC uspInsertEmployee '6403138425727','Minerva','Griffin',64,'minnieGrif@gmail.com','0289568841',6,48
EXEC uspInsertEmployee '1603189526092','Craig','Moss',180,'CraigMoss@gmail.com','0498855479',1,26
EXEC uspInsertEmployee '1205178582295','Wesley','Fields',118,'fieldsW@gmail.com','0730572277',3,37
EXEC uspInsertEmployee '5707155624270','Risa','Juarez',15,'risaJ@gmail.com','0970770324',3,38
EXEC uspInsertEmployee '8307223809422','Hall','Wilkerson',187,'hall@htomail.org','0848131349',3,27
EXEC uspInsertEmployee '1403073272621','TaShya','Charles',18,'chalie@gmail.com','0370315460',2,44
EXEC uspInsertEmployee '7712110938252','Justin','Scott',10,'scottJ@gmail.com','0295680515',3,1
EXEC uspInsertEmployee '1708046774885','Ruby','Hammond',14,'rubyH@hotmail.org','0801915835',6,2
EXEC uspInsertEmployee '1209061409594','Adena','Newman',134,'adenahewman@gmail.com','0964520726',1,4
EXEC uspInsertEmployee '1203144644646','Vera','Cross',32,'veraC@gmail.com','0270142733',2,35
EXEC uspInsertEmployee '8506194595282','Gareth','Conley',80,'conley@gmail.com','0268181000',4,35
EXEC uspInsertEmployee '1603253803719','Nicole','Brown',150,'nikkieBrown@gmail.com','0110530853',2,43
EXEC uspInsertEmployee '1107221500129','Ross','Kelly',31,'rossk@mail.co.za','0154465472',3,30
EXEC uspInsertEmployee '8706024979632','Renee','Pacheco',26,'reneePacheco@mail.org','0494697639',5,33
EXEC uspInsertEmployee '2710156011072','Honorato','Nash',32,'nashH@gmail.com','0442882980',4,18
EXEC uspInsertEmployee '1902114249178','Deirdre','Downs',52,'deirdre@mail.co.za','0856001392',5,24
EXEC uspInsertEmployee '1310173159820','Nathan','Warren',127,'nateWarren@gmail.com','0997272770',6,16
EXEC uspInsertEmployee '1407020630502','Kadeem','Dillard',77,'kdillard@mail.org','0664465419',1,7
EXEC uspInsertEmployee '7910218311272','Nicholas','Mendez',55,'nicholam@mail.com','0328565896',2,13
EXEC uspInsertEmployee '9605195867192','Kylie','Howard',7,'khoward@mail.co.za','0829912157',3,31
EXEC uspInsertEmployee '5210015983712','Hayden','Galloway',86,'haydenG@gmail.com','0254541216',4,19
EXEC uspInsertEmployee '8102199391032','Tyler','Watts',148,'tywatts@mail.co.za','0582304483',5,10
EXEC uspInsertEmployee '7805076833762','Kylie','Simpson',134,'simpson@hotmail.com','0646320314',6,30
EXEC uspInsertEmployee '7809056523762','Martina','Bullock',193,'martinabull@gmail.com','0938266501',7,28
EXEC uspInsertEmployee '9904121888722','Cassidy','Marshall',192,'cassidyM@hotmail.co.za','0409860655',6,12
EXEC uspInsertEmployee '1005029511371','Angela','Talley',190,'angieT@gmail.com','0189732471',5,37
EXEC uspInsertEmployee '1008264814930','Clementine','Oneal',115,'clemoneal@mail.org','0515503821',3,12
EXEC uspInsertEmployee '6706267098552','Ingrid','Green',22,'ingridGreen@gmailcom','0673120181',2,38
EXEC uspInsertEmployee '1507246132952','Burton','Elliott',78,'burton@gmail.com','0778527867',1,46
EXEC uspInsertEmployee '1502280250212','Malcolm','Walls',157,'wallsM@hotmal.org','0652025107',6,3
EXEC uspInsertEmployee '1406263340381','Nita','Warren',37,'nitawarren@gmailcom','0965015143',5,33
EXEC uspInsertEmployee '6604295402682','Fiona','Lambert',60,'lambertF@mail.co.za','0870649431',2,32


EXEC uspInsertMarkup 0.0
EXEC uspInsertMarkup 10.0
EXEC uspInsertMarkup 20.0
EXEC uspInsertMarkup 25.0
EXEC uspInsertMarkup 50.0
EXEC uspInsertMarkup 75.0

EXEC uspInsertDeal 'Standard', NULL, NULL, 'Standard no deal', 1
EXEC uspInsertDeal 'January Sale', '2020-01-12', '2020-01-30', 'January sale, 50% off', 5
EXEC uspInsertDeal 'Summer Sale', '2020-03-01', '2020-04-01', 'Summer sale, 20% off', 3

EXEC uspInsertSupplier 'Supplier One', 'supplier1@gmail.com', '0825546658', 12
EXEC uspInsertSupplier 'Supplier Two', 'supplier2@gmail.com', '0115426897', 50
EXEC uspInsertSupplier 'Supplier Three', 'supplier3@gmail.com', '0115589745', 2
EXEC uspInsertSupplier 'Supplier Four', 'supplier4@gmail.com', '0325548956', 16
EXEC uspInsertSupplier 'Supplier Five', 'supplier5@gmail.com', '0114572323', 30

EXEC uspInsertProductTax 'No TAX', 0.0
EXEC uspInsertProductTax 'VAT', 14.0

EXEC uspInsertMainCategory 'Appliances'
EXEC uspInsertMainCategory 'Baby, Toddlers, & Kids'
EXEC uspInsertMainCategory 'Beverages & Liquor'
EXEC uspInsertMainCategory 'Books'
EXEC uspInsertMainCategory 'Catering'
EXEC uspInsertMainCategory 'Electronnics & Computers'
EXEC uspInsertMainCategory 'Food'
EXEC uspInsertMainCategory 'Games & Gaming'
EXEC uspInsertMainCategory 'Hardware & Auto'
EXEC uspInsertMainCategory 'Health & Beauty'
EXEC uspInsertMainCategory 'Home & Garden'
EXEC uspInsertMainCategory 'Household & Pet Supplies'
EXEC uspInsertMainCategory 'Sports, Outdoor & Travel'
EXEC uspInsertMainCategory 'Stationary & Office Furniture'

EXEC uspInsertSubCategory 'Fans, Heaters & Air Coolers', 1
EXEC uspInsertSubCategory 'Small Appliances', 1
EXEC uspInsertSubCategory 'Washers & Tumble Dryers', 1
EXEC uspInsertSubCategory 'Fridges & Freezers', 1
EXEC uspInsertSubCategory 'Stoves & Ovens', 1
EXEC uspInsertSubCategory 'Water Purification & Soda Machines', 1
EXEC uspInsertSubCategory 'Vacuum Cleaners & Floor Care', 1
EXEC uspInsertSubCategory 'Baby', 2
EXEC uspInsertSubCategory 'Baby & Toddler Food', 2
EXEC uspInsertSubCategory 'Learning & Development', 2
EXEC uspInsertSubCategory 'Bags', 2
EXEC uspInsertSubCategory 'Toys', 2
EXEC uspInsertSubCategory 'Coffee, Teas & Hot Drinks', 3
EXEC uspInsertSubCategory 'Spirits', 3
EXEC uspInsertSubCategory 'Beer & Cider', 3
EXEC uspInsertSubCategory 'Milk & Milk Alternatives', 3
EXEC uspInsertSubCategory 'Wines', 3
EXEC uspInsertSubCategory 'Pre mixes', 3
EXEC uspInsertSubCategory 'Soft Drinks & Juices', 3
EXEC uspInsertSubCategory 'Bar Accessories', 3
EXEC uspInsertSubCategory 'Children & Young Adult', 4
EXEC uspInsertSubCategory 'Non-Fiction', 4
EXEC uspInsertSubCategory 'Non-Fiction Specialist', 4
EXEC uspInsertSubCategory 'Educational', 4
EXEC uspInsertSubCategory 'General Fiction', 4
EXEC uspInsertSubCategory 'Cookware', 5
EXEC uspInsertSubCategory 'Electrical Equipment', 5
EXEC uspInsertSubCategory 'Plasticware', 5
EXEC uspInsertSubCategory 'Consumables & Cleaning', 5
EXEC uspInsertSubCategory 'Glassware & Crockery', 5
EXEC uspInsertSubCategory 'Utensils', 5
EXEC uspInsertSubCategory 'Commercial Cater Wear', 5
EXEC uspInsertSubCategory 'Audio & Video', 6
EXEC uspInsertSubCategory 'Computers & Tablets', 6
EXEC uspInsertSubCategory 'Printers & Scanners', 6
EXEC uspInsertSubCategory 'Cameras', 6
EXEC uspInsertSubCategory 'Fitness Trackers & Wearables', 6
EXEC uspInsertSubCategory 'Televisions', 6
EXEC uspInsertSubCategory 'Fitness Trackers & Wearables', 6
EXEC uspInsertSubCategory 'GPS & Navigation', 6
EXEC uspInsertSubCategory 'Cellphones', 6
EXEC uspInsertSubCategory 'Movies, Music & Entertainment', 6
EXEC uspInsertSubCategory 'Wifi & Networking', 6
EXEC uspInsertSubCategory 'Watches', 6
EXEC uspInsertSubCategory 'Cereals & Porridges', 7
EXEC uspInsertSubCategory 'Baking', 7
EXEC uspInsertSubCategory 'Cooking', 7
EXEC uspInsertSubCategory 'Snacks, Biscuits & Sweets', 7
EXEC uspInsertSubCategory 'Desserts', 7
EXEC uspInsertSubCategory 'Sauces, Spreads & Condiments', 7
EXEC uspInsertSubCategory 'Games', 8
EXEC uspInsertSubCategory 'Interactive Toys', 8
EXEC uspInsertSubCategory 'Video Games', 8
EXEC uspInsertSubCategory 'Auto', 9
EXEC uspInsertSubCategory 'Fittings & Shelving', 9
EXEC uspInsertSubCategory 'Powertool Accessories', 9
EXEC uspInsertSubCategory 'DIY Powertools', 9
EXEC uspInsertSubCategory 'Glue, Nails & Fasteners', 9
EXEC uspInsertSubCategory 'Security', 9
EXEC uspInsertSubCategory 'Industrial Powertools', 9
EXEC uspInsertSubCategory 'Electrical', 9
EXEC uspInsertSubCategory 'Lighting', 9
EXEC uspInsertSubCategory 'Trolleys & Ladders', 9
EXEC uspInsertSubCategory 'Hand Tools', 9
EXEC uspInsertSubCategory 'Paint & Surface', 9
EXEC uspInsertSubCategory 'Workshop Machinery', 9
EXEC uspInsertSubCategory 'Antiperspirants & Deodorants', 10
EXEC uspInsertSubCategory 'Feminine Care', 10
EXEC uspInsertSubCategory 'Oral Care', 10
EXEC uspInsertSubCategory 'Bath & Shower', 10
EXEC uspInsertSubCategory 'Hair Care', 10
EXEC uspInsertSubCategory 'Self Care', 10
EXEC uspInsertSubCategory 'Shaving & Grooming', 10
EXEC uspInsertSubCategory 'Body Care', 10
EXEC uspInsertSubCategory 'Healthcare', 10
EXEC uspInsertSubCategory 'Shoe Care', 10
EXEC uspInsertSubCategory 'Cosmetics', 10
EXEC uspInsertSubCategory 'Healthcare', 10
EXEC uspInsertSubCategory 'Skin Care', 10
EXEC uspInsertSubCategory 'Bathroom', 11
EXEC uspInsertSubCategory 'Kitchen', 11
EXEC uspInsertSubCategory 'Lawn & Garden', 11
EXEC uspInsertSubCategory 'Bedroom', 11
EXEC uspInsertSubCategory 'Laundry', 11
EXEC uspInsertSubCategory 'Lighting', 11
EXEC uspInsertSubCategory 'Bins', 11
EXEC uspInsertSubCategory 'Home Décor', 11
EXEC uspInsertSubCategory 'Patio', 11
EXEC uspInsertSubCategory 'Bathroom Supplies', 12
EXEC uspInsertSubCategory 'Insecticides & Pest Control', 12
EXEC uspInsertSubCategory 'Pet Supplies', 12
EXEC uspInsertSubCategory 'Household Supplies', 12
EXEC uspInsertSubCategory 'Kitchen Supplies', 12
EXEC uspInsertSubCategory 'Braai', 13
EXEC uspInsertSubCategory 'Exercise & Fitness', 13
EXEC uspInsertSubCategory 'Pool', 13
EXEC uspInsertSubCategory 'Camping', 13
EXEC uspInsertSubCategory 'Fun Outdoor Activities', 13
EXEC uspInsertSubCategory 'Sports', 13
EXEC uspInsertSubCategory 'Luggage & Bags', 13
EXEC uspInsertSubCategory 'Event & Party Supplies', 14
EXEC uspInsertSubCategory 'Office Electronics', 14
EXEC uspInsertSubCategory 'Office Furniture', 14
EXEC uspInsertSubCategory 'Stationery Storage', 14
EXEC uspInsertSubCategory 'Stationery', 14
EXEC uspInsertSubCategory 'Paper & Filing', 14

EXEC uspInsertBaseProduct 1, 'Goldair Air Cooler', 'This is a very cool Air Cooler ;) Buy it!', 'C:\Documents\Pictures\GoldairAirCooler.jpg', 1, 2, 309.95
EXEC uspInsertBaseProduct 1, 'Venta Hygrometer', 'Digital thermo-hygrometer with display indicating the temperature and relative humidity', 'C:\Documents\Pictures\VentaHygrometer.jpg', 1, 2, 119.95
EXEC uspInsertBaseProduct 45, 'Simba Peanuts & Raisins Baler', 'Nice packets of Simba Peanuts & Raisins Baler', 'C:\Documents\Pictures\SimbaPeanuts.jpg', 2, 2, 6.95
EXEC uspInsertBaseProduct 46, 'Nestle Dessert Topping Peppermint Crisp', 'Creamy and delicious Nestle Dessert Topping right when you need it.', 'C:\Documents\Pictures\NestleDessertToppingPeppermintCrisp.jpg', 1, 1, 29.95
EXEC uspInsertBaseProduct 48, 'PS4 Need For Speed Payback', 'Best game you can buy to keep you busy for hours', 'C:\Documents\Pictures\PS4NeedForSpeedPayback.jpg', 3, 1, 419.95
EXEC uspInsertBaseProduct 48, 'Xbox One Red Dead Redemption 2', 'Xbox software', 'C:\Documents\Pictures\XboxOneRedDeadRedemption2.jpg', 1, 1, 659.95

EXEC uspInsertStoreBaseProduct 1, 1, 90
EXEC uspInsertStoreBaseProduct 2, 1, 88
EXEC uspInsertStoreBaseProduct 1, 2, 34
EXEC uspInsertStoreBaseProduct 2, 2, 150
EXEC uspInsertStoreBaseProduct 1, 4, 23
EXEC uspInsertStoreBaseProduct 1, 3, 22

EXEC uspInsertProductAttribute 'Weigth', 'The product weight is in Kg', 'Physical Weight'
EXEC uspInsertProductAttribute 'Age Rating', 'Minimum age to recommended to play game', 'Restrictions'
EXEC uspInsertProductAttribute 'Color', 'The primary overall color of the product', 'Outside Color'
EXEC uspInsertProductAttribute 'Package Amount', 'Overall amount of packages in container', 'Quantity'
EXEC uspInsertProductAttribute 'Outer Dimensions', 'Dimensions of package [L x W x H]', 'Dimensions'

EXEC uspInsertProductValue 5, 1, '0.005'
EXEC uspInsertProductValue 6, 2, '18'
EXEC uspInsertProductValue 1, 3, 'White'
EXEC uspInsertProductValue 3, 4, '(36 x 50g)'
EXEC uspInsertProductValue 4, 4, '(1 x 500ml)'
EXEC uspInsertProductValue 5, 5, '110mm(L) x 100mm(W) x 5mm(H)'

EXEC uspInsertStoreOrder 1, 1, '2020-04-25', 1, 'Order Received', NULL
EXEC uspInsertStoreOrder 2, 2, '2020-04-25', 2, 'Order In Progress', NULL
EXEC uspInsertStoreOrder 3, 3, '2020-04-26', 3, 'Order Received', NULL
EXEC uspInsertStoreOrder 4, 4, '2020-04-27', 4, 'Order In Progress', NULL
EXEC uspInsertStoreOrder 1, 5, '2020-04-28', 5, 'Order On Route', NULL
EXEC uspInsertStoreOrder 2, 6, '2020-04-28', 6, 'Order Delivered', NULL
EXEC uspInsertStoreOrder 3, 7, '2020-04-28', 7, 'Order Delivered', NULL
EXEC uspInsertStoreOrder 4, 8, '2020-04-28', 8, 'Order Received', NULL

EXEC uspInsertOrderProduct 1, 1, 20
EXEC uspInsertOrderProduct 2, 2, 400
EXEC uspInsertOrderProduct 3, 3, 700
EXEC uspInsertOrderProduct 4, 4, 5


/*WRITEOFFS*/
/*WRITEOFFS - this example shows 1 items are deducted from inventory quantity due to damage with the BaseProductId of 1*/
EXEC uspInsertWriteoffReason 'Damaged'
EXEC uspInsertWriteoff '2020-04-29'
EXEC uspInsertProductWriteoff 1, 1, 1, 1, 1

/*SALES*/
/*SALES - this example shows 2 items (Simba P&R) are sold with the BaseProductId of 3*/
EXEC uspInsertSale 19.90, 1, 1
EXEC uspInsertSaleProduct 1, 3, 2
