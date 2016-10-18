
/*
CREATE TABLE part
(
	PNO int(5) PRIMARY KEY,
	PNAME varchar(40) not null,
	COLOR varchar(10) not null
);

CREATE TABLE warehouse
(
	WNO int(5) PRIMARY KEY,
	WNAME varchar(20) not null,
	CITY varchar(20) not null
);

CREATE TABLE shipment
(
	WNO int(5) not null,
	PNO int(5) not null,
	QUANTITY int(5) not null,
	DATE varchar(20) not null,
	FOREIGN KEY (PNO) REFERENCES part(PNO) ON DELETE CASCADE,
	FOREIGN KEY (WNO) REFERENCES warehouse(WNO) ON DELETE CASCADE
);



INSERT INTO `ise18`.`part` (
`PNO` ,
`PNAME` ,
`COLOR`
)
VALUES (
'1', 'door', 'red'
), (
'2', 'window', 'blue'
), (
'3', 'Stereo', 'black'
), (
'4', 'blub', 'yellow'
), (
'5', 'bulb', 'white'
), (
'6', 'oil', 'black'
), (
'7', 'tires', 'black'
), (
'8', 'taillamp', 'red'
), (
'9', 'bolt', 'silver'
), (
'10', 'steering cover', 'brown'
);

INSERT INTO `ise18`.`warehouse` (
`WNO` ,
`WNAME` ,
`CITY`
)
VALUES (
1 , 'Bob''s Garage', 'Bangalore'
), (
2 , 'Smiths Auto Parts', 'Mumbai'
), (
3 , 'John Cars', 'Kolkata'
), (
4 , 'Cars by David', 'Chennai'
), (
5 , 'Anthony Auto Store', 'Bangalore'
);



INSERT INTO `ise18`.`shipment` (`WNO`, `PNO`, `QUANTITY`, `DATE`) VALUES ('1', '1', '10', '11 OCT 2016'), 
('1', '2', '5', '12 OCT 2016'),
('1', '3', '5', '13 OCT 2016'),
('1', '4', '4', '14 OCT 2016'),
('1', '5', '3', '12 OCT 2016'),
('1', '6', '10', '15 OCT 2016'),
('1', '7', '11', '13 OCT 2016'),
('1', '8', '9', '1 OCT 2016'),
('1', '9', '2', '5 OCT 2016'),
('1', '10', '1', '7 OCT 2016'),
('2', '2', '5', '12 OCT 2016'),
('2', '3', '5', '13 OCT 2016'),
('2', '4', '4', '14 OCT 2016'),
('3', '5', '3', '12 OCT 2016'),
('3', '6', '10', '15 OCT 2016'),
('3', '2', '5', '12 OCT 2016'),
('3', '3', '5', '13 OCT 2016'),
('5', '4', '4', '14 OCT 2016'),
('5', '5', '3', '12 OCT 2016'),
('5', '6', '10', '15 OCT 2016'),
('4', '4', '4', '14 OCT 2016'),
('4', '5', '3', '12 OCT 2016'),
('4', '6', '10', '15 OCT 2016'),
('5', '7', '11', '13 OCT 2016'),
('4', '8', '9', '1 OCT 2016');
*/

--Q1
SELECT WNAME FROM warehouse  WHERE WNO IN ( SELECT WNO FROM shipment WHERE PNO IN ( SELECT PNO FROM part WHERE COLOR = "red" ));


--Q2
select PNO from shipment group by pno having count(wno) = (select count(*) from warehouse);

--Q3
select WNO, count(*) as'count' from shipment group by wno;
