
CREATE TABLE boat(
	BID integer(5) primary key,
	BNAME varchar(10) NOT NULL,
	COLOUR varchar(10) NOT NULL
);

CREATE TABLE sailor(
	SID integer(5) primary key,
	SNAME varchar(20) NOT NULL,
	AGE integer(5) NOT NULL,
	RATING float(5) NOT NULL
);

CREATE TABLE reserves(
	BID integer(5),
	SID integer(5),
	DAY varchar(10),
 	primary key (BID,SID),
	foreign key(BID) references boat(BID) on delete cascade,
	foreign key(SID) references sailor(SID) on delete cascade
);

INSERT into boat (BID, BNAME, COLOUR) values (1, 'perfect', 'white'), (2, 'life', 'blue'), (3, 'moonlight', 'white'), (4, 'pride', 'yellow'), (5, 'lady', 'orange'), (6, 'ocean', 'blue'), (7, 'serendipity', 'red'), (8, 'king', 'white'), (9, 'iron', 'black'), (10, 'wind', 'yellow');

INSERT into sailor(SID, SNAME, AGE, RATING) values (101, 'brad pitt', 20, 9.9), (102, 'scarlett', 21, 9.8), (103, 'jennifer', 18, 9.3), (104, 'lawrence', 24, 9.1),(105, 'will smith', 25, 9.0), (106, 'robert', 19, 9.9), (107, 'paul walker', 20, 9.5), (108, 'arnold', 22, 9.1),(109, 'james cameron', 26 , 9.4), (110, 'sunny', 22, 10);

INSERT into reserves (BID, SID, DAY) values (1, 101, 'monday'), (2, 102, 'tuesday'), (3, 103, 'wednesday'), (4, 104, 'monday'), (5, 105, 'friday'), (6, 106, 'saturday'), (7, 107, 'sunday'), (8, 108, 'thursday'), (10, 110, 'monday'),(4, 106, 'friday'), (7, 103, 'monday');

select BID from reserves
where SID in ( select SID from sailor 
where SNAME = 'robert');

SELECT BID, SNAME FROM reserves JOIN sailor ON (reserves.SID = sailor.SID) order by BID;

SELECT COLOUR, BNAME from boat, sailor, reserves where boat.BID = reserves.BID AND sailor.SID = reserves.SID AND sailor.SNAME = 'brad pitt';

SELECT SNAME from sailor, boat, reserves where sailor.SID =  reserves.SID AND boat.BID = reserves.BID AND BID = 4;

