USE GenericCompanyDB;
GO

EXEC uspInsertCompany 'Toyota', '1970-05-10', 'Toyota description';

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
EXEC uspInsertRole 'Car Salesman', 'Sales cars'

EXEC uspInsertPermission 'Super', 'Access to everything'
EXEC uspInsertPermission 'Admin', 'Ability to add, update, delete employees and other tables'
EXEC uspInsertPermission 'Store', 'Ability to open and close store'
EXEC uspInsertPermission 'Accounting/Billing', 'Access to all accounting and billing documents'
EXEC uspInsertPermission 'Records', 'Can view employee records'
EXEC uspInsertPermission 'Camera', 'Ability to view camera footage'
EXEC uspInsertPermission 'Cars', 'Access to cars and can drive them'
EXEC uspInsertPermission 'No Permissions', 'This employee has no important permissions'

EXEC uspInsertRolePermission 1, 1
EXEC uspInsertRolePermission 2, 4
EXEC uspInsertRolePermission 3, 2
EXEC uspInsertRolePermission 4, 5
EXEC uspInsertRolePermission 5, 3
EXEC uspInsertRolePermission 6, 7

EXEC uspInsertStoreType 'Sales Store'

EXEC uspInsertStore 'Imperial Toyota Strijdompark', 1, 1, 1
EXEC uspInsertStore 'Imperial Toyota Randburg', 1, 1, 2
EXEC uspInsertStore 'Monument Toyota West Rand', 1, 1, 3
EXEC uspInsertStore 'Halfway Toyota Honeydew', 1, 1, 4
EXEC uspInsertStore 'Toyota Replacement Parts', 1, 1, 5
EXEC uspInsertStore 'Rivonia Toyota', 1, 1, 6
EXEC uspInsertStore 'Imperial Toyota Parktown', 1, 1, 7
EXEC uspInsertStore 'Monument Toyota Constantia', 1, 1, 8
EXEC uspInsertStore 'Bidvest McCarthy Toyota Woodmead', 1, 1, 9
EXEC uspInsertStore 'Rand Stadium Toyota The Glen', 1, 1, 10
EXEC uspInsertStore 'Fury Toyota Darrenwood', 1, 1, 11
EXEC uspInsertStore 'Killarney Toyota Houghton', 1, 1, 12
EXEC uspInsertStore 'CMH Toyota Melrose', 1, 1, 13
EXEC uspInsertStore 'Fosters Toyota Robertville', 1, 1, 14
EXEC uspInsertStore 'Imperial Toyota City', 1, 1, 15
EXEC uspInsertStore 'Hyde Park Toyota', 1, 1, 16
EXEC uspInsertStore 'Halfway Toyota Fourways', 1, 1, 17
EXEC uspInsertStore 'Automark', 1, 1, 18
EXEC uspInsertStore 'Bidvest McCarthy Toyota Bruma', 1, 1, 19
EXEC uspInsertStore 'Imperial Toyota Kempton Park', 1, 1, 20
EXEC uspInsertStore 'Bidvest McCarthy Toyota Durban North', 1, 1, 21
EXEC uspInsertStore 'CMH Toyota', 1, 1, 22
EXEC uspInsertStore 'Bidvest McCarthy Toyota Durban Kingsmead', 1, 1, 23
EXEC uspInsertStore 'Bidvest McCarthy Toyota Ballito', 1, 1, 24
EXEC uspInsertStore 'Bidvest McCarthy Toyota Pietermaritzburg', 1, 1, 25
EXEC uspInsertStore 'Durban South Toyota', 1, 1, 26
EXEC uspInsertStore 'SMG Toyota Hillcrest', 1, 1, 27
EXEC uspInsertStore 'Thekwini Toyota Westville', 1, 1, 28
EXEC uspInsertStore 'Bidvest McCarthy Toyota Pinetown', 1, 1, 29
EXEC uspInsertStore 'Thekwini Toyota Durban', 1, 1, 30
EXEC uspInsertStore 'Halfway Toyota Howick', 1, 1, 31
EXEC uspInsertStore 'Halfway Malanda Toyota', 1, 1, 32
EXEC uspInsertStore 'Toyota SA Marketing Co (Pty) Ltd', 1, 1, 33
EXEC uspInsertStore 'Braams Toyota', 1, 1, 34
EXEC uspInsertStore 'Humansdorp Toyota', 1, 1, 35
EXEC uspInsertStore 'Klein Karoo Toyota', 1, 1, 36
EXEC uspInsertStore 'Halfway Toyota George', 1, 1, 37
EXEC uspInsertStore 'Knysna Toyota', 1, 1, 38
EXEC uspInsertStore 'Mossel Bay Toyota', 1, 1, 39
EXEC uspInsertStore 'Status Toyota - Somerset East', 1, 1, 40
EXEC uspInsertStore 'Imperial Toyota CapeGate', 1, 1, 41
EXEC uspInsertStore 'Barloworld Toyota Stellenbosch', 1, 1, 42
EXEC uspInsertStore 'Barloworld Toyota - Tygervalley', 1, 1, 43
EXEC uspInsertStore 'Rola Toyota Bredasdorp', 1, 1, 44
EXEC uspInsertStore 'Bidvest McCarthy Toyota Tableview', 1, 1, 45
EXEC uspInsertStore 'Hermanus Toyota', 1, 1, 46
EXEC uspInsertStore 'Toyota - Malmesbury Toyota', 1, 1, 47
EXEC uspInsertStore 'Protea Toyota', 1, 1, 48
EXEC uspInsertStore 'Bidvest McCarthy Toyota N1 City', 1, 1, 49
EXEC uspInsertStore 'Barloworld Toyota - Kuilsrivier', 1, 1, 50

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

EXEC uspInsertEmployee 1804122625730,'Lewis','Rocha',186,'lewisRocha@gmail.com','0532680587',1,8
EXEC uspInsertEmployee 920307849832,'Shana','Santana',75,'shana@hotmail.org','0774846141',1,34
EXEC uspInsertEmployee 1206030267477,'Denise','Herrera',123,'dHerrera@gmail.com','0611418307',5,24
EXEC uspInsertEmployee 1212013228274,'Samson','Le',174,'samson@hotmail.org','0819175978',6,17
EXEC uspInsertEmployee 970424004629,'Jason','Graves',119,'gravesJ@gmail.com','0881392399',3,21
EXEC uspInsertEmployee 1901299978158,'Kim','Barron',111,'KimBarron@gmail.com','0596158718',2,42
EXEC uspInsertEmployee 1905126011144,'Jordan','Odom',60,'Jordan@htomail.co.za','0395305324',6,30
EXEC uspInsertEmployee 890928560302,'Nehru','Terry',18,'nTerry@hotmail.org','0337136924',1,9
EXEC uspInsertEmployee 1112075707894,'Tad','Cote',81,'tadCote@gmail.com','0601187361',6,34
EXEC uspInsertEmployee 220311424963,'Adrienne','Case',8,'adrienne@gmail.com','0595852948',2,10
EXEC uspInsertEmployee 680223112313,'Tanek','Moreno',106,'tanekM@hotmail.org','0602207556',4,33
EXEC uspInsertEmployee 380514624958,'Joshua','Mendoza',87,'joshM@gmail.com','0305332053',3,14
EXEC uspInsertEmployee 530624683465,'Jeremy','Marquez',133,'jeremy@gmail.com','0921745478',5,21
EXEC uspInsertEmployee 1311306365555,'Sierra','Schmidt',171,'sierraSch@hotmail.co.za','0635945749',4,1
EXEC uspInsertEmployee 1408178874163,'Stacy','Davis',138,'stacey@gmailcom','0166363838',3,19
EXEC uspInsertEmployee 140716002170,'Kessie','Wilcox',67,'kessieWilcox@gmail.com','0412027386',5,20
EXEC uspInsertEmployee 310905396316,'Isabella','Rosa',91,'issarosa@gmail.com','0205050847',6,48
EXEC uspInsertEmployee 1003216535198,'Rudyard','Horton',37,'rudy@hotmail.com','0815693190',6,14
EXEC uspInsertEmployee 461201890375,'Murphy','Russell',81,'murphRuss@gmail.com','0442928546',4,31
EXEC uspInsertEmployee 561221843629,'Giacomo','Schroeder',38,'giaSchroeder@hotmail.org','0717110083',2,12
EXEC uspInsertEmployee 1108307636739,'Rose','Fisher',100,'rosie@gmail.com','0195005457',1,3
EXEC uspInsertEmployee 1912252496190,'Zelda','Rhodes',96,'zeldaRhodes@gmail.com','0352926223',1,9
EXEC uspInsertEmployee 1301054604440,'Yardley','Chen',167,'yardchen@gmail.co.za','0414891693',2,8
EXEC uspInsertEmployee 1303310047286,'Hope','Padilla',70,'hopePhil@gmail.com','0096928446',3,43
EXEC uspInsertEmployee 810926967277,'Sara','Boyd',39,'saraboyd@hotmail.com','0561525383',1,50
EXEC uspInsertEmployee 1103149240828,'Magee','Franklin',98,'mageeF@gmail.com','0898091720',4,24
EXEC uspInsertEmployee 110503441291,'Lillith','Burke',158,'lilli@gmail.com','0561809769',4,33
EXEC uspInsertEmployee 1802269623623,'Cade','Kelly',183,'cadeK@hotmail.co.za','0757390829',5,31
EXEC uspInsertEmployee 831203148425,'Kylan','Bowers',130,'kylanbowers@gmail.com','0701829842',3,37
EXEC uspInsertEmployee 551224556705,'Victoria','Ortega',178,'vicky@gmail.com','0587241590',5,13
EXEC uspInsertEmployee 640313842577,'Minerva','Griffin',64,'minnieGrif@gmail.com','0289568841',6,48
EXEC uspInsertEmployee 1603189526092,'Craig','Moss',180,'CraigMoss@gmail.com','0498855479',1,26
EXEC uspInsertEmployee 120517858295,'Wesley','Fields',118,'fieldsW@gmail.com','0730572277',3,37
EXEC uspInsertEmployee 570715562470,'Risa','Juarez',15,'risaJ@gmail.com','0970770324',3,38
EXEC uspInsertEmployee 830722380942,'Hall','Wilkerson',187,'hall@htomail.org','0848131349',3,27
EXEC uspInsertEmployee 1403073272621,'TaShya','Charles',18,'chalie@gmail.com','0370315460',2,44
EXEC uspInsertEmployee 771211093825,'Justin','Scott',10,'scottJ@gmail.com','0295680515',3,1
EXEC uspInsertEmployee 1708046774885,'Ruby','Hammond',14,'rubyH@hotmail.org','0801915835',6,2
EXEC uspInsertEmployee 1209061409594,'Adena','Newman',134,'adenahewman@gmail.com','0964520726',1,4
EXEC uspInsertEmployee 1203144644646,'Vera','Cross',32,'veraC@gmail.com','0270142733',2,35
EXEC uspInsertEmployee 850619459528,'Gareth','Conley',80,'conley@gmail.com','0268181000',4,35
EXEC uspInsertEmployee 1603253803719,'Nicole','Brown',150,'nikkieBrown@gmail.com','0110530853',2,43
EXEC uspInsertEmployee 1107221500129,'Ross','Kelly',31,'rossk@mail.co.za','0154465472',3,30
EXEC uspInsertEmployee 870602497963,'Renee','Pacheco',26,'reneePacheco@mail.org','0494697639',5,33
EXEC uspInsertEmployee 271015601107,'Honorato','Nash',32,'nashH@gmail.com','0442882980',4,18
EXEC uspInsertEmployee 1902114249178,'Deirdre','Downs',52,'deirdre@mail.co.za','0856001392',5,24
EXEC uspInsertEmployee 1310173159820,'Nathan','Warren',127,'nateWarren@gmail.com','0997272770',6,16
EXEC uspInsertEmployee 1407020630502,'Kadeem','Dillard',77,'kdillard@mail.org','0664465419',1,7
EXEC uspInsertEmployee 791021831127,'Nicholas','Mendez',55,'nicholam@mail.com','0328565896',2,13
EXEC uspInsertEmployee 960519586719,'Kylie','Howard',7,'khoward@mail.co.za','0829912157',3,31
EXEC uspInsertEmployee 521001598371,'Hayden','Galloway',86,'haydenG@gmail.com','0254541216',4,19
EXEC uspInsertEmployee 810219939103,'Tyler','Watts',148,'tywatts@mail.co.za','0582304483',5,10
EXEC uspInsertEmployee 780507683376,'Kylie','Simpson',134,'simpson@hotmail.com','0646320314',6,30
EXEC uspInsertEmployee 780905652376,'Martina','Bullock',193,'martinabull@gmail.com','0938266501',7,28
EXEC uspInsertEmployee 990412188872,'Cassidy','Marshall',192,'cassidyM@hotmail.co.za','0409860655',6,12
EXEC uspInsertEmployee 1005029511371,'Angela','Talley',190,'angieT@gmail.com','0189732471',5,37
EXEC uspInsertEmployee 1008264814930,'Clementine','Oneal',115,'clemoneal@mail.org','0515503821',3,12
EXEC uspInsertEmployee 670626709855,'Ingrid','Green',22,'ingridGreen@gmailcom','0673120181',2,38
EXEC uspInsertEmployee 150724613295,'Burton','Elliott',78,'burton@gmail.com','0778527867',1,46
EXEC uspInsertEmployee 1502290250212,'Malcolm','Walls',157,'wallsM@hotmal.org','0652025107',6,3
EXEC uspInsertEmployee 1406263340381,'Nita','Warren',37,'nitawarren@gmailcom','0965015143',5,33
EXEC uspInsertEmployee 660429540268,'Fiona','Lambert',60,'lambertF@mail.co.za','0870649431',2,32
EXEC uspInsertEmployee 460828345131,'Kyle','Torres',43,'ktorres@mail.co.za','0970655807',6,11
EXEC uspInsertEmployee 1110043418370,'Samantha','Rios',53,'sammie@gmail.com','0711850402',5,18
EXEC uspInsertEmployee 1707186851607,'Jamal','Franks',173,'franksJ@gmail.com','0913175655',1,26
EXEC uspInsertEmployee 990303559183,'Zenaida','Kane',86,'ZenaidaK@mail.co.za','0133033005',1,48
EXEC uspInsertEmployee 1903146447659,'Gay','Kim',76,'gKim@mail.org','0771344702',4,3
EXEC uspInsertEmployee 1901270459053,'Kameko','Grimes',107,'grimesK@hotmail.org','0401089538',1,34
EXEC uspInsertEmployee 1005016468158,'Stacy','Rice',184,'staceyRice@gmail.com','0844649569',2,13
EXEC uspInsertEmployee 1104254513218,'Ali','House',76,'alihouse@gmail.com','0868332639',3,34
EXEC uspInsertEmployee 931025954803,'Simon','Kirkland',51,'siminK@hotmail.co.za','0439476766',3,39
EXEC uspInsertEmployee 1712056030501,'Hanna','Hobbs',18,'hobbshanna@gmail.com','0726666968',5,32
EXEC uspInsertEmployee 1007132060016,'Fleur','Bentley',145,'bentFleur@mail.co.za','0661434692',5,32
EXEC uspInsertEmployee 1504072156288,'Gary','Cooley',163,'garyC@gmail.com','0444507876',4,27
EXEC uspInsertEmployee 1912195694254,'Ralph','Holland',128,'ralphyh@gmail.com','0633217048',3,33
EXEC uspInsertEmployee 960523723427,'Sage','Andrews',36,'sagie@hotmail.co.za','0794672301',2,29
EXEC uspInsertEmployee 211015433218,'Gregory','Compton',1,'gregCompton@mail.com','0810999352',5,19
EXEC uspInsertEmployee 1909283583190,'Mona','Hodge',97,'moanH@gmail.com','0779907178',4,48
EXEC uspInsertEmployee 1510243856381,'Hamilton','Gross',79,'hamiltongross@gmail.com','0190342763',4,43
EXEC uspInsertEmployee 1306031726776,'Jillian','Ellison',137,'jillelli@mail.co.za','0413117332',1,24
EXEC uspInsertEmployee 1989113552357,'Lunea','Carrillo',20,'lunea@gmail.com','0957589634',1,28
EXEC uspInsertEmployee 1710148466701,'Hop','Humphrey',44,'HopHump@gmail.com','0236058213',5,38
EXEC uspInsertEmployee 930515778637,'Daryl','Mitchell',121,'darylM@hotmail.org','0580792062',5,34
EXEC uspInsertEmployee 870725588320,'Stephen','Frederick',168,'stephen@gmail.com','0676016715',5,30
EXEC uspInsertEmployee 1804138072290,'Tanisha','Colon',120,'tancol@mail.co.za','0235319736',6,47
EXEC uspInsertEmployee 950318693004,'Amena','Heath',145,'amenahealth@gmail.com','0616842282',2,34
EXEC uspInsertEmployee 391212312784,'Riley','Salas',135,'rileysalas@mail.co.za','0159278089',3,48
EXEC uspInsertEmployee 580528249176,'Chadwick','Whitfield',166,'chadW@gmail.com','0357203487',3,17
EXEC uspInsertEmployee 1704280649294,'Jonas','Little',145,'jonasLittle@gmail.com','0130001598',1,14
EXEC uspInsertEmployee 1206275921141,'Christine','Mann',147,'christinemann@gmail.com','0686791261',3,30
EXEC uspInsertEmployee 1905123981809,'Sydney','Weiss',21,'weissS@mail.co.za', '0718831925',3,28
EXEC uspInsertEmployee 140521603902,'Shaine','Yates',22,'yatesShaine@gmail.com','0803284020',2,50
EXEC uspInsertEmployee 1906163245471,'Celeste','Douglas',133,'douglasC@gmail.com','0784710041',6,20
EXEC uspInsertEmployee 1101228007945,'Galvin','Spencer',28,'galvSpen@mail.co.za','0622730074',3,29
EXEC uspInsertEmployee 350705704735,'Wing','Kaufman',181,'WingK@hotmail.org','0971189507',6,22
EXEC uspInsertEmployee 1109065175047,'Breanna','Mccray',20,'Breanna@gmail.com','0180752166',4,8
EXEC uspInsertEmployee 210102661436,'Barclay','Hester',47,'barclayhester@mail.org','0201034626',5,37
EXEC uspInsertEmployee 1206016985614,'Galena','Rosario',193,'gelenaR@mail.com','0298082620',3,40
EXEC uspInsertEmployee 1210237966869,'Rose','Benjamin',113,'roseBen@gmail.com','0625716859',6,48
EXEC uspInsertEmployee 1010142227491,'Teegan','Mcfarland',11,'teeganmcF@mail.co.za','0704494096',5,41

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

EXEC uspInsertMainCategory 'Offroad'
EXEC uspInsertMainCategory 'Road'

EXEC uspInsertSubCategory 'Pickup', 1
EXEC uspInsertSubCategory 'SUV', 1
EXEC uspInsertSubCategory 'SUV', 2
EXEC uspInsertSubCategory 'Sportster', 2
EXEC uspInsertSubCategory 'Sedan', 2
EXEC uspInsertSubCategory 'Hatchback', 2
EXEC uspInsertSubCategory 'Bus', 2

EXEC uspInsertBaseProduct 1, 'Hilux', 'Double Cab Dakar Rally Edition', 'C:\Documents\Pictures\Pickup\Dakar.jpg', 1, 2, 399995.95
EXEC uspInsertBaseProduct 2, 'Land Cruiser', '76', 'C:\Documents\Pictures\SUV\LandCruiser76.jpg', 1, 2, 569995.95
EXEC uspInsertBaseProduct 3, 'Rav4', '2.0 GX 2WD', 'C:\Documents\Pictures\SUV\Rav42WD.jpg', 1, 2, 379995.95
EXEC uspInsertBaseProduct 4, 'Supra', '3.0 Premium', 'C:\Documents\Pictures\Sportster\Supra.jpg', 3, 2, 789995.95
EXEC uspInsertBaseProduct 5, 'Corolla', 'Corolla Quest', 'C:\Documents\Pictures\Sedan\Corolla Quest.jpg', 1, 2, 249995.95
EXEC uspInsertBaseProduct 6, 'Yaris', 'Yaris 1.5 CVT', 'C:\Documents\Pictures\Pickup\Yaris.jpg', 1, 2, 179995.95
EXEC uspInsertBaseProduct 7, 'Quantum', 'Quantum 2.8 GL', 'C:\Documents\Pictures\Bus\Quantum.jpg', 1, 2, 969995.95

EXEC uspInsertStoreBaseProduct 1, 2, 100
EXEC uspInsertStoreBaseProduct 2, 1, 23
EXEC uspInsertStoreBaseProduct 3, 3, 8
EXEC uspInsertStoreBaseProduct 4, 4, 67
EXEC uspInsertStoreBaseProduct 5, 5, 214
EXEC uspInsertStoreBaseProduct 6, 6, 36
EXEC uspInsertStoreBaseProduct 7, 7, 11

EXEC uspInsertProductValue 1, 1, '3000Kg'
EXEC uspInsertProductValue 2, 1, '3500Kg'
EXEC uspInsertProductValue 3, 1, '2500Kg'
EXEC uspInsertProductValue 4, 1, '1500Kg'
EXEC uspInsertProductValue 5, 1, '1900Kg'
EXEC uspInsertProductValue 6, 1, '1500Kg'
EXEC uspInsertProductValue 7, 1, '3100Kg'
EXEC uspInsertProductValue 1, 2, 'White'
EXEC uspInsertProductValue 2, 2, 'Black'
EXEC uspInsertProductValue 3, 2, 'Blue'
EXEC uspInsertProductValue 4, 2, 'Silver'
EXEC uspInsertProductValue 5, 2, 'White'
EXEC uspInsertProductValue 6, 2, 'Red'
EXEC uspInsertProductValue 7, 2, 'White'

EXEC uspInsertProductAttribute 'Weigth', 'The product weight is in Kg', 'Physical Weight'
EXEC uspInsertProductAttribute 'Color', 'The primary overall color of the product', 'Outside Color'

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
