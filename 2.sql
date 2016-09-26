/*
CREATE TABLE PART (
	pno integer(10) primary key,
	pname varchar(20),
	colour varchar(20)
);

CREATE TABLE SUPPLIER (
	sno integer(10) primary key,
	sname varchar(20),
	address varchar(10)
);

CREATE TABLE SUPPLY (
	pno integer(10),
	sno integer(10),
	quantity varchar(20),
	primary key(pno, sno),
	foreign key(pno) references PART(pno) on delete cascade,
	foreign key(sno) references SUPPLIER(sno) on delete cascade
);

INSERT INTO PART (pno, pname, colour) VALUES (101, 'BOLTS', 'RED'), (102, 'NUTS', 'RED'), (103, 'PLUGS', 'RED'), (104, 'BOLTS', 'BLUE'), (105, 'NUTS', 'BLUE'), (106, 'PLUGS', 'BLUE'), (107, 'BOLTS', 'GREEN'), (108, 'NUTS', 'GREEN'), (109, 'PLUGS', 'GREEN');

INSERT INTO SUPPLIER (sno, sname, address) VALUES (1, 'Ram', 'BNG'), (2, 'Jacob', 'DEL'), (3, 'Lucius', 'CHE');
INSERT INTO SUPPLIER (sno, sname, address) VALUES (4, 'Steve', 'BOM');
INSERT INTO SUPPLY (pno, sno, quantity) VALUES (107, 4, 10), (109, 4, 15);
INSERT INTO SUPPLY (pno, sno, quantity) VALUES (101, 1, 5), (102, 1, 3), (105, 1, 5), (109, 1, 10), (103, 2, 5), (106, 2, 10), (107, 2, 5), (109, 2, 3), (104, 3, 3), (106, 3, 5), (108, 3, 10), (109, 3, 6);

*/

--a. Obtain the PNO of parts supplied by supplier ‘Ram’.
SELECT pno from SUPPLY where sno = (select sno from SUPPLIER where sname='Ram');

--b. Obtain the Names of suppliers who supply bolts
SELECT sname, colour as 'BOLTSCOLOR' from SUPPLIER, SUPPLY, PART where pname='BOLTS' AND SUPPLY.sno=SUPPLIER.sno AND PART.pno=SUPPLY.pno;

--c.Delete the parts which are green in colour
DELETE from PART where colour='GREEN';

--d. Retrieve the names of suppliers from Delhi
SELECT sname from SUPPLIER where address='DEL';

--e. Obtain names of suppliers who supply red colored parts.
SELECT sname from SUPPLIER where sno in ( select sno from SUPPLY where pno in (Select pno from PART where colour='RED'));

--f. Obtain the sno. of suppliers who supply maximum number of parts.
select sno,max(parts_sold) from (SELECT sno,COUNT(pno) as "parts_sold" from SUPPLY group by sno) temp;

--g. Obtain the sno, and total quantity of parts supplied by each supplier. 
select sno ,sum(quantity) from SUPPLY group by sno;

--h. Retrieve the name and address of suppliers who supply all green colored parts.
select  distinct sname,address,pname from SUPPLY,SUPPLIER,PART where colour='GREEN' and SUPPLIER.sno=SUPPLY.sno and PART.pno=SUPPLY.pno; 

--i. Retrieve the supplier who supplies only green colored parts.
select distinct sname from supplier where sno in (select SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.colour='GREEN' and SUPPLY.sno NOT IN(select SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.COLOUR!='GREEN' ));

--j. Retrieve the supplier who supplies both red and green colored parts.
select distinct sname from supplier where sno in (select distinct SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.colour='GREEN' and SUPPLY.sno  IN(select SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.COLOUR='RED' )); 


