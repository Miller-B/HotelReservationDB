USE HotelsOfBrokenDreams;

INSERT INTO Person(FirstName, LastName)
VALUES('Freddie','Mercury'),
('Eddie','Vedder'),
('Debbie','Harry'),
('Axl','Rose'),
('Shirley','Manson'),
('David','Bowie'),
('Lauryn','Hill'),
('Dave', 'Grohl');

INSERT INTO Address(AddressNumber, Street, City, State, ZipCode)
VALUES('9764','Jeopardy Lane','Chicago','IL','60015'),
('518','Crestview Drive','Beverly Hills','CA','90077'),
('31','Spooner Street','Quahog','RI','02907'),
('2630','Hegal Place','Alexandria','VA','23242'),
('3170','West 53 Road','Annapolis','MD','21401'),
('111','Archer Avenue','New York City','NY','10550'),
('1407','Graymalkin Lane','Salem Center','NY','10560');

INSERT INTO Customer(PersonID, Phone, Email)
VALUES(2,'478-265-5380','lorem.sit@libero.co.uk'),
(1,'955-899-1925','lacus@quisdiam.co.uk'),
(4,'648-822-1439','auctor.nunc@habitaorbi.ca'),
(5,'698-666-1544','pede.Cum@Sedmalesuague.edu'),
(3,'768-339-8276','semper.Fusce@ultrices.edu'),
(8,'323-303-4064','Sed@malesuada.com'); 

INSERT INTO Customer_Address(CustomerID, AddressID)
VALUES(3,1),(4,2),(5,3);

INSERT INTO Guest(PersonID, DateOfBirth)
VALUES(1,'1946/09/05'),(3,'1945/07/01'),(5,'1966/08/26');

INSERT INTO TaxRate(Rate)
VALUES(7.0),(6.5),(5.75);

INSERT INTO Hotel(HotelName, AddressID, TaxRateID, TotalFloors, IsChain)
VALUES('Helton', 4, 1, 16, true),
('The Rutz', 5, 2, 20, true),
('Embossy Suites', 6, 3, 9, false);

INSERT INTO Employee(PersonID, AddressID, HotelID)
VALUES(7,5,1),(6,2,2);

INSERT INTO TypeDescription(Description, MaxCapacity)
VALUES('Double',4),('King Suite',3),('Penthouse',8);

INSERT INTO TypeRate(TypeDescriptionID, HotelID, Rate, StartDate, EndDate)
VALUES(1,3,139.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,3,109.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,3,139.00,'2017/02/28 22:01','2017/05/15 5:59'),
(1,3,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(1,3,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(1,3,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,3,149.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,3,209.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,3,149.00,'2017/02/28 22:01','2017/05/15 5:59'),
(2,3,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(2,3,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(2,3,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,3,539.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,3,609.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,3,539.00,'2017/02/28 22:01','2017/05/15 5:59'),
(3,3,669.00,'2017/05/15 6:00','2017/09/15 5:59'),
(3,3,669.00,'2017/09/15 6:00','2017/12/30 5:59'),
(3,3,709.00,'2017/12/30 6:00','2018/01/02 5:59'),

(1,2,139.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,2,109.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,2,139.00,'2017/02/28 22:01','2017/05/15 5:59'),
(1,2,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(1,2,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(1,2,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,2,149.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,2,209.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,2,149.00,'2017/02/28 22:01','2017/05/15 5:59'),
(2,2,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(2,2,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(2,2,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,2,539.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,2,609.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,2,539.00,'2017/02/28 22:01','2017/05/15 5:59'),
(3,2,669.00,'2017/05/15 6:00','2017/09/15 5:59'),
(3,2,669.00,'2017/09/15 6:00','2017/12/30 5:59'),
(3,2,709.00,'2017/12/30 6:00','2018/01/02 5:59'),

(1,1,139.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,1,109.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,1,139.00,'2017/02/28 22:01','2017/05/15 5:59'),
(1,1,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(1,1,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(1,1,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,1,149.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,1,209.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,1,149.00,'2017/02/28 22:01','2017/05/15 5:59'),
(2,1,169.00,'2017/05/15 6:00','2017/09/15 5:59'),
(2,1,169.00,'2017/09/15 6:00','2017/12/30 5:59'),
(2,1,209.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,1,539.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,1,609.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,1,539.00,'2017/02/28 22:01','2017/05/15 5:59'),
(3,1,669.00,'2017/05/15 6:00','2017/09/15 5:59'),
(3,1,669.00,'2017/09/15 6:00','2017/12/30 5:59'),
(3,1,709.00,'2017/12/30 6:00','2018/01/02 5:59'),

(1,3,129.00,'2016/01/02 6:00','2016/02/01 5:59'),
(1,3,99.00,'2016/02/01 6:00','2016/02/28 22:00'),
(1,3,129.00,'2016/02/28 22:01','2016/05/15 5:59'),
(1,3,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(1,3,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(1,3,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(2,3,139.00,'2016/01/02 6:00','2016/02/01 5:59'),
(2,3,199.00,'2016/02/01 6:00','2016/02/28 22:00'),
(2,3,139.00,'2016/02/28 22:01','2016/05/15 5:59'),
(2,3,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(2,3,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(2,3,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(3,3,509.00,'2016/01/02 6:00','2016/02/01 5:59'),
(3,3,489.00,'2016/02/01 6:00','2016/02/28 22:00'),
(3,3,509.00,'2016/02/28 22:01','2016/05/15 5:59'),
(3,3,619.00,'2016/05/15 6:00','2016/09/15 5:59'),
(3,3,619.00,'2016/09/15 6:00','2016/12/30 5:59'),
(3,3,689.00,'2016/12/30 6:00','2017/01/02 5:59'),

(1,2,129.00,'2016/01/02 6:00','2016/02/01 5:59'),
(1,2,99.00,'2016/02/01 6:00','2016/02/28 22:00'),
(1,2,129.00,'2016/02/28 22:01','2016/05/15 5:59'),
(1,2,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(1,2,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(1,2,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(2,2,139.00,'2016/01/02 6:00','2016/02/01 5:59'),
(2,2,199.00,'2016/02/01 6:00','2016/02/28 22:00'),
(2,2,139.00,'2016/02/28 22:01','2016/05/15 5:59'),
(2,2,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(2,2,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(2,2,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(3,2,509.00,'2016/01/02 6:00','2016/02/01 5:59'),
(3,2,489.00,'2016/02/01 6:00','2016/02/28 22:00'),
(3,2,509.00,'2016/02/28 22:01','2016/05/15 5:59'),
(3,2,619.00,'2016/05/15 6:00','2016/09/15 5:59'),
(3,2,619.00,'2016/09/15 6:00','2016/12/30 5:59'),
(3,2,689.00,'2016/12/30 6:00','2017/01/02 5:59'),

(1,1,129.00,'2016/01/02 6:00','2016/02/01 5:59'),
(1,1,99.00,'2016/02/01 6:00','2016/02/28 22:00'),
(1,1,129.00,'2016/02/28 22:01','2016/05/15 5:59'),
(1,1,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(1,1,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(1,1,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(2,1,139.00,'2016/01/02 6:00','2016/02/01 5:59'),
(2,1,199.00,'2016/02/01 6:00','2016/02/28 22:00'),
(2,1,139.00,'2016/02/28 22:01','2016/05/15 5:59'),
(2,1,159.00,'2016/05/15 6:00','2016/09/15 5:59'),
(2,1,159.00,'2016/09/15 6:00','2016/12/30 5:59'),
(2,1,199.00,'2016/12/30 6:00','2017/01/02 5:59'),
(3,1,509.00,'2016/01/02 6:00','2016/02/01 5:59'),
(3,1,489.00,'2016/02/01 6:00','2016/02/28 22:00'),
(3,1,509.00,'2016/02/28 22:01','2016/05/15 5:59'),
(3,1,619.00,'2016/05/15 6:00','2016/09/15 5:59'),
(3,1,619.00,'2016/09/15 6:00','2016/12/30 5:59'),
(3,1,689.00,'2016/12/30 6:00','2017/01/02 5:59');

INSERT INTO Location(Description)
VALUES('WaterFront'),('NextToElevator'),('EndUnit'),('Standard');

INSERT INTO LocationRate(LocationID, HotelID, Rate, StartDate, EndDate)
VALUES(1,3,0.15,'2017/01/02 6:00','2017/02/01 5:59'),
(1,3,0.15,'2017/02/01 6:00','2017/02/28 22:00'),
(1,3,0.15,'2017/02/28 22:01','2017/05/15 5:59'),
(1,3,0.15,'2017/05/15 6:00','2017/09/15 5:59'),
(1,3,0.15,'2017/09/15 6:00','2017/12/30 5:59'),
(1,3,0.15,'2017/12/30 6:00','2018/01/02 5:59'),
(2,3,0.05,'2017/01/02 6:00','2017/02/01 5:59'),
(2,3,0.05,'2017/02/01 6:00','2017/02/28 22:00'),
(2,3,0.05,'2017/02/28 22:01','2017/05/15 5:59'),
(2,3,0.05,'2017/05/15 6:00','2017/09/15 5:59'),
(2,3,0.05,'2017/09/15 6:00','2017/12/30 5:59'),
(2,3,0.05,'2017/12/30 6:00','2018/01/02 5:59'),
(3,3,0.10,'2017/01/02 6:00','2017/02/01 5:59'),
(3,3,0.10,'2017/02/01 6:00','2017/02/28 22:00'),
(3,3,0.10,'2017/02/28 22:01','2017/05/15 5:59'),
(3,3,0.10,'2017/05/15 6:00','2017/09/15 5:59'),
(3,3,0.10,'2017/09/15 6:00','2017/12/30 5:59'),
(3,3,0.10,'2017/12/30 6:00','2018/01/02 5:59'),
(4,3,0.00,'2017/01/02 6:00','2017/02/01 5:59'),
(4,3,0.00,'2017/02/01 6:00','2017/02/28 22:00'),
(4,3,0.00,'2017/02/28 22:01','2017/05/15 5:59'),
(4,3,0.00,'2017/05/15 6:00','2017/09/15 5:59'),
(4,3,0.00,'2017/09/15 6:00','2017/12/30 5:59'),
(4,3,0.00,'2017/12/30 6:00','2018/01/02 5:59'),


(1,2,0.15,'2017/01/02 6:00','2017/02/01 5:59'),
(1,2,0.15,'2017/02/01 6:00','2017/02/28 22:00'),
(1,2,0.15,'2017/02/28 22:01','2017/05/15 5:59'),
(1,2,0.15,'2017/05/15 6:00','2017/09/15 5:59'),
(1,2,0.15,'2017/09/15 6:00','2017/12/30 5:59'),
(1,2,0.15,'2017/12/30 6:00','2018/01/02 5:59'),
(2,2,0.05,'2017/01/02 6:00','2017/02/01 5:59'),
(2,2,0.05,'2017/02/01 6:00','2017/02/28 22:00'),
(2,2,0.05,'2017/02/28 22:01','2017/05/15 5:59'),
(2,2,0.05,'2017/05/15 6:00','2017/09/15 5:59'),
(2,2,0.05,'2017/09/15 6:00','2017/12/30 5:59'),
(2,2,0.05,'2017/12/30 6:00','2018/01/02 5:59'),
(3,2,0.10,'2017/01/02 6:00','2017/02/01 5:59'),
(3,2,0.10,'2017/02/01 6:00','2017/02/28 22:00'),
(3,2,0.10,'2017/02/28 22:01','2017/05/15 5:59'),
(3,2,0.10,'2017/05/15 6:00','2017/09/15 5:59'),
(3,2,0.10,'2017/09/15 6:00','2017/12/30 5:59'),
(3,2,0.10,'2017/12/30 6:00','2018/01/02 5:59'),
(4,2,0.00,'2017/01/02 6:00','2017/02/01 5:59'),
(4,2,0.00,'2017/02/01 6:00','2017/02/28 22:00'),
(4,2,0.00,'2017/02/28 22:01','2017/05/15 5:59'),
(4,2,0.00,'2017/05/15 6:00','2017/09/15 5:59'),
(4,2,0.00,'2017/09/15 6:00','2017/12/30 5:59'),
(4,2,0.00,'2017/12/30 6:00','2018/01/02 5:59'),

(1,1,0.15,'2017/01/02 6:00','2017/02/01 5:59'),
(1,1,0.15,'2017/02/01 6:00','2017/02/28 22:00'),
(1,1,0.15,'2017/02/28 22:01','2017/05/15 5:59'),
(1,1,0.15,'2017/05/15 6:00','2017/09/15 5:59'),
(1,1,0.15,'2017/09/15 6:00','2017/12/30 5:59'),
(1,1,0.15,'2017/12/30 6:00','2018/01/02 5:59'),
(2,1,0.05,'2017/01/02 6:00','2017/02/01 5:59'),
(2,1,0.05,'2017/02/01 6:00','2017/02/28 22:00'),
(2,1,0.05,'2017/02/28 22:01','2017/05/15 5:59'),
(2,1,0.05,'2017/05/15 6:00','2017/09/15 5:59'),
(2,1,0.05,'2017/09/15 6:00','2017/12/30 5:59'),
(2,1,0.05,'2017/12/30 6:00','2018/01/02 5:59'),
(3,1,0.10,'2017/01/02 6:00','2017/02/01 5:59'),
(3,1,0.10,'2017/02/01 6:00','2017/02/28 22:00'),
(3,1,0.10,'2017/02/28 22:01','2017/05/15 5:59'),
(3,1,0.10,'2017/05/15 6:00','2017/09/15 5:59'),
(3,1,0.10,'2017/09/15 6:00','2017/12/30 5:59'),
(3,1,0.10,'2017/12/30 6:00','2018/01/02 5:59'),
(4,1,0.00,'2017/01/02 6:00','2017/02/01 5:59'),
(4,1,0.00,'2017/02/01 6:00','2017/02/28 22:00'),
(4,1,0.00,'2017/02/28 22:01','2017/05/15 5:59'),
(4,1,0.00,'2017/05/15 6:00','2017/09/15 5:59'),
(4,1,0.00,'2017/09/15 6:00','2017/12/30 5:59'),
(4,1,0.00,'2017/12/30 6:00','2018/01/02 5:59');


INSERT INTO Room(RoomNumber, Floor, LocationID, HotelID)
VALUES(101,1,1,1),(102,1,2,1),(103,1,3,1),(104,1,4,1),(105,1,4,1), (201,2,1,1),(202,2,2,1),(203,2,3,1),(204,2,4,1),(205,2,4,1), (301,3,1,1),(302,3,2,1),(303,3,3,1),(304,3,4,1),(305,3,4,1),
(401,4,1,1),(402,4,2,1),(403,4,3,1),(404,4,4,1),(405,4,4,1), (501,5,1,1),(502,5,2,1),(503,5,3,1),(504,5,4,1),(505,5,4,1), (601,6,1,1),(602,6,2,1),(603,6,3,1),(604,6,4,1),(605,6,4,1),
(701,7,1,1),(702,7,2,1),(703,7,3,1),(704,7,4,1),(705,7,4,1), (801,8,1,1),(802,8,2,1),(803,8,3,1),(804,8,4,1),(805,8,4,1), (901,9,1,1),(902,9,2,1),(903,9,3,1),(904,9,4,1),(905,9,4,1),
(1001,10,1,1),(1002,10,2,1),(1003,10,3,1),(1004,10,4,1),(1005,10,4,1), (1101,11,1,1),(1102,11,2,1),(1103,11,3,1),(1104,11,4,1),(1105,11,4,1), (1201,12,1,1),(1202,12,2,1),(1203,12,3,1),
(1401,14,1,1),(1402,14,2,1),(1403,14,3,1),(1404,14,4,1),(1405,14,4,1), (1501,15,1,1),(1502,15,2,1),(1503,15,3,1),(1504,15,4,1),(1505,15,4,1), (1601,16,1,1),(1602,16,2,1),(1603,16,3,1),(1604,16,4,1),(1605,16,4,1),
(1701,17,1,1),(1702,17,2,1),(1703,17,3,1),(1704,17,4,1),(1705,17,4,1),

(101,1,1,2),(102,1,2,2),(103,1,3,2),(104,1,4,2),(105,1,4,2), (201,2,1,2),(202,2,2,2),(203,2,3,2),(204,2,4,2),(205,2,4,2), (301,3,1,2),(302,3,2,2),(303,3,3,2),(304,3,4,2),(305,3,4,2),
(401,4,1,2),(402,4,2,2),(403,4,3,2),(404,4,4,2),(405,4,4,2), (501,5,1,2),(502,5,2,2),(503,5,3,2),(504,5,4,2),(505,5,4,2), (601,6,1,2),(602,6,2,2),(603,6,3,2),(604,6,4,2),(605,6,4,2),
(701,7,1,2),(702,7,2,2),(703,7,3,2),(704,7,4,2),(705,7,4,2), (801,8,1,2),(802,8,2,2),(803,8,3,2),(804,8,4,2),(805,8,4,2), (901,9,1,2),(902,9,2,2),(903,9,3,2),(904,9,4,2),(905,9,4,2),
(1001,10,1,2),(1002,10,2,2),(1003,10,3,2),(1004,10,4,2),(1005,10,4,2), (1101,11,1,2),(1102,11,2,2),(1103,11,3,2),(1104,11,4,2),(1105,11,4,2), (1201,12,1,2),(1202,12,2,2),(1203,12,3,2),
(1401,14,1,2),(1402,14,2,2),(1403,14,3,2),(1404,14,4,2),(1405,14,4,2), (1501,15,1,2),(1502,15,2,2),(1503,15,3,2),(1504,15,4,2),(1505,15,4,2), (1601,16,1,2),(1602,16,2,2),(1603,16,3,2),(1604,16,4,2),(1605,16,4,2),
(1701,17,1,2),(1702,17,2,2),(1703,17,3,2),(1704,17,4,2),(1705,17,4,2), (1801,18,1,2),(1802,18,2,2),(1803,18,3,2),(1804,18,4,2),(1805,18,4,2), (1901,19,1,2),(1902,19,2,2),(1903,19,3,2),(1904,19,4,2),(1905,19,4,2),
(2001,20,1,2),(2002,20,2,2),(2003,20,3,2),(2004,20,4,2),(2005,20,4,2), (2101,21,1,2),

(101,1,1,3),(102,1,2,3),(103,1,3,3),(104,1,4,3),(105,1,4,3), (201,2,1,3),(202,2,2,3),(203,2,3,3),(204,2,4,3),(205,2,4,3), (301,3,1,3),(302,3,2,3),(303,3,3,3),(304,3,4,3),(305,3,4,3),
(401,4,1,3),(402,4,2,3),(403,4,3,3),(404,4,4,3),(405,4,4,3), (501,5,1,3),(502,5,2,3),(503,5,3,3),(504,5,4,3),(505,5,4,3), (601,6,1,3),(602,6,2,3),(603,6,3,3),(604,6,4,3),(605,6,4,3),
(701,7,1,3),(702,7,2,3),(703,7,3,3),(704,7,4,3),(705,7,4,3), (801,8,1,3),(802,8,2,3),(803,8,3,3),(804,8,4,3),(805,8,4,3), (901,9,1,3),(902,9,1,3);

INSERT INTO Room_TypeDescription(RoomID, TypeDescriptionID, StartDate, EndDate)
VALUES(1,2,'2016/01/01 6:00','2016/10/01 6:00'),(1,1,'2016/10/01 6:01',NULL),
(6,2,'2016/01/01 6:00','2016/10/01 6:00'),(6,1,'2016/10/01 6:01',NULL),
(11,2,'2016/01/01 6:00','2016/10/01 6:00'),(11,1,'2016/10/01 6:01',NULL);

INSERT INTO Amenity(Description)
VALUES('AddOnTV'), ('SleeperSofa'), ('JacuzziTub'), ('MiniBar'), ('AddOnRefrigerator'), ('HypoAllegBedding');

INSERT INTO AmenityRate(HotelID, AmenityID, Rate, StartDate, EndDate)
VALUES(1,1,35.00,'2017/01/01 6:00','2017/02/20 6:00'),
(1,1,25.00,'2017/02/20 6:01','2018/01/01 5:59'),
(1,1,25.00,'2016/01/01 6:00','2017/01/01 5:59'),
(1,2,50.00,'2017/01/01 00:00','2017/12/31 23:59'),
(1,3,80.00,'2017/01/01 6:00','2017/02/01 6:00'),
(1,3,100.00,'2017/02/01 6:01','2017/02/20 6:00'),
(1,3,80.00,'2017/02/20 6:01','2018/01/01 5:59'),
(1,4,99.00,'2016/12/28 6:00','2017/01/02 6:00'),
(1,4,120.00,'2017/01/02 6:01','2017/12/28 5:59'),
(1,5,50.00,'2016/01/01 6:00','2017/01/01 5:59'),
(1,5,55.00,'2017/01/01 6:00','2018/01/01 5:59'),
(1,6,25.00,'2017/04/01 6:00','2018/01/01 5:59'), 

(2,1,35.00,'2017/01/01 6:00','2017/02/20 6:00'),
(2,1,25.00,'2017/02/20 6:01','2018/01/01 5:59'),
(2,1,25.00,'2016/01/01 6:00','2017/01/01 5:59'),
(2,2,50.00,'2017/01/01 00:00','2017/12/31 23:59'),
(2,3,80.00,'2017/01/01 6:00','2017/02/01 6:00'),
(2,3,100.00,'2017/02/01 6:01','2017/02/20 6:00'),
(2,3,80.00,'2017/02/20 6:01','2018/01/01 5:59'),
(2,4,99.00,'2016/12/28 6:00','2017/01/02 6:00'),
(2,4,120.00,'2017/01/02 6:01','2017/12/28 5:59'),
(2,5,50.00,'2016/01/01 6:00','2017/01/01 5:59'),
(2,5,55.00,'2017/01/01 6:00','2018/01/01 5:59'),
(2,6,25.00,'2017/04/01 6:00','2018/01/01 5:59'), 

(3,1,35.00,'2017/01/01 6:00','2017/02/20 6:00'),
(3,1,25.00,'2017/02/20 6:01','2018/01/01 5:59'),
(3,1,25.00,'2016/01/01 6:00','2017/01/01 5:59'),
(3,2,50.00,'2017/01/01 00:00','2017/12/31 23:59'),
(3,3,80.00,'2017/01/01 6:00','2017/02/01 6:00'),
(3,3,100.00,'2017/02/01 6:01','2017/02/20 6:00'),
(3,3,80.00,'2017/02/20 6:01','2018/01/01 5:59'),
(3,4,99.00,'2016/12/28 6:00','2017/01/02 6:00'),
(3,4,120.00,'2017/01/02 6:01','2017/12/28 5:59'),
(3,5,50.00,'2016/01/01 6:00','2017/01/01 5:59'),
(3,5,55.00,'2017/01/01 6:00','2018/01/01 5:59'),
(3,6,25.00,'2017/04/01 6:00','2018/01/01 5:59'); 

INSERT INTO Room_Amenity(RoomID, AmenityID)
VALUES(12,4),(12,3),(12,1),(33,4),(7,5);

INSERT INTO Service(Description)
VALUES('ChampagneTS'),('ChampagneHouse'),('Massage'),('DryCleaning'),('AdditionalTurnOver');

INSERT INTO ServiceRate(ServiceID, HotelID, Rate, StartDate, EndDate)
VALUES(1,1,299.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,1,249.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,1,299.00,'2017/02/28 22:01','2017/12/30 5:59'),
(1,1,249.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,1,99.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,1,79.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,1,99.00,'2017/02/28 22:01','2017/12/30 5:59'),
(2,1,79.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,1,75.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,1,60.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,1,75.00,'2017/02/28 22:01','2018/01/01 5:59'),
(4,1,25.00,'2017/01/01 6:00','2018/01/01 5:59'),
(5,1,15.00,'2017/01/01 6:00','2018/01/01 5:59'),

(1,2,299.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,2,249.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,2,299.00,'2017/02/28 22:01','2017/12/30 5:59'),
(1,2,249.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,2,99.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,2,79.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,2,99.00,'2017/02/28 22:01','2017/12/30 5:59'),
(2,2,79.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,2,75.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,2,60.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,2,75.00,'2017/02/28 22:01','2018/01/01 5:59'),
(4,2,25.00,'2017/01/01 6:00','2018/01/01 5:59'),
(5,2,15.00,'2017/01/01 6:00','2018/01/01 5:59'),

(1,3,299.00,'2017/01/02 6:00','2017/02/01 5:59'),
(1,3,249.00,'2017/02/01 6:00','2017/02/28 22:00'),
(1,3,299.00,'2017/02/28 22:01','2017/12/30 5:59'),
(1,3,249.00,'2017/12/30 6:00','2018/01/02 5:59'),
(2,3,99.00,'2017/01/02 6:00','2017/02/01 5:59'),
(2,3,79.00,'2017/02/01 6:00','2017/02/28 22:00'),
(2,3,99.00,'2017/02/28 22:01','2017/12/30 5:59'),
(2,3,79.00,'2017/12/30 6:00','2018/01/02 5:59'),
(3,3,75.00,'2017/01/02 6:00','2017/02/01 5:59'),
(3,3,60.00,'2017/02/01 6:00','2017/02/28 22:00'),
(3,3,75.00,'2017/02/28 22:01','2018/01/01 5:59'),
(4,3,25.00,'2017/01/01 6:00','2018/01/01 5:59'),
(5,3,15.00,'2017/01/01 6:00','2018/01/01 5:59');


INSERT INTO Room_Service(RoomID, ServiceID, ServiceDate)
VALUES (20,1,'2017/04/02 19:00'), (20,1,'2017/04/03 19:00'), (20,1,'2017/04/04 19:00');

INSERT INTO Maintenance(Description)
VALUES('Heat/AC Fix'),('Clean');

INSERT INTO Room_Maintenance(RoomID, MaintenanceID, EmployeeID, StartDate, EndDate)
VALUES(30,1,2,'2017/05/22 5:00','2017/05/22 6:00');

INSERT INTO DiscountType(Description)
VALUES('- Percent'),('- DollarAmount'),('+ Percent'),('+ DollarAmount');

INSERT INTO PromoCode(Description, DiscountTypeID, HotelID, ValueOfDiscount, StartDate, EndDate)
VALUES('GroupDiscount',2,2,100.00,'2017/01/02 6:00','2017/06/01 6:00'),
('LoyaltyDiscount',1,2,10,'2017/01/02 6:00','2017/06/01 6:00'),
('FloorReserve',3,3,10,'2017/01/02 6:00','2017/06/01 6:00');

INSERT INTO Reservation(HotelID, CustomerID, IsCancelled, CancelDate)
VALUES(2,6,false,NULL),(3,2,true,'2017/08/08'),(3,1,false,NULL),(1,4,false,NULL),(2,5,false,NULL);

INSERT INTO Reservation_PromoCode(ReservationID, PromoCodeID)
VALUES (1,1),(3,2);

INSERT INTO Room_Reservation(ReservationID, RoomID, StartDate, EndDate, IsCancelled, CancelDate)
VALUES(1,188,'2017/07/10 16:00','2017/07/15 11:00',false,NULL),
(2,11,'2017/09/10 16:00','2017/09/15 11:00',true,'2017/08/20 10:00'),
(3,31,'2017/10/01 16:00','2017/10/05 11:00',false,NULL),
(3,32,'2017/10/01 16:00','2017/10/05 11:00',false,NULL),
(3,33,'2017/10/01 16:00','2017/10/05 11:00',false,NULL),
(4,18,'2017/10/10 16:00','2017/10/17 11:00',false,NULL),
(5,111,'2017/05/10 16:00','2017/05/17 11:00',false,NULL);

INSERT INTO Room_Reservation_PromoCode(RoomReservationID, PromoCodeID)
VALUES(1,1),(2,2),(3,1),(4,2);

INSERT INTO Room_Reservation_AmenityWaiver(RoomReservationID, AmenityID, WaiverDate)
VALUES(1,1,'2017/07/11 15:00');

INSERT INTO Room_Reservation_ServiceWaiver(RoomReservationID, ServiceID, WaiverDate)
VALUES(1,4,'2017/07/12 12:00');

INSERT INTO Room_Reservation_Guest(RoomReservationID, GuestID)
VALUES(1,2);

INSERT INTO Billing(RoomReservationID, CheckInDate, CheckOutDate)
VALUES(3,'2017/10/01 16:00','2017/10/03'),
(4,'2017/10/03 16:00','2017/10/03'),
(5,'2017/10/01 16:00','2017/10/02');