
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

INSERT INTO SUPPLIER (sno, sname, address) VALUES (1, 'John', 'BNG'), (2, 'Jacob', 'DEL'), (3, 'Lucius', 'CHE');

INSERT INTO SUPPLY (pno, sno, quantity) VALUES (101, 1, 5), (102, 1, 3), (105, 1, 5), (109, 1, 10), (103, 2, 5), (106, 2, 10), (107, 2, 5), (109, 2, 3), (104, 3, 3), (106, 3, 5), (108, 3, 10), (109, 3, 6);

/*Instructions Follow*/

SELECT * from PART;

SELECT * from SUPPLIER;

SELECT * from SUPPLY;

/*Answer1*/ 

SELECT pno from SUPPLY where sno = (select sno from SUPPLIER where sname='RAM');

/*Answer2*/

SELECT sname, colour as 'BOLTSCOLOR' from SUPPLIER, SUPPLY, PART where pname='BOLTS' AND SUPPLY.sno=SUPPLIER.sno AND PART.pno=SUPPLY.pno;

/*Answer3*/

DELETE from PART where colour='GREEN';

/*Answer4*/

SELECT sname from SUPPLIER where address='DEL';


/*Answer1*/ 

SELECT pno from SUPPLY where sno = (select sno from SUPPLIER where sname='RAM');

/*Answer2*/

SELECT sname, colour as 'BOLTSCOLOR' from SUPPLIER, SUPPLY, PART where pname='BOLTS' AND SUPPLY.sno=SUPPLIER.sno AND PART.pno=SUPPLY.pno;



/*Answer4*/

SELECT sname from SUPPLIER where address='DELHI';

/*Answer5*/

SELECT sname from SUPPLIER where sno in ( select sno from SUPPLY where pno in (Select pno from PART where colour='RED'));

/*query6*/
select sno,max(parts_sold) from (SELECT sno,COUNT(pno) as "parts_sold" from SUPPLY group by sno) as new_table;

select sno ,sum(quantity) from SUPPLY group by sno;
/*query 8*/

select  distinct sname,address,pname from SUPPLY,SUPPLIER,PART where colour='GREEN' and SUPPLIER.sno=SUPPLY.sno and PART.pno=SUPPLY.pno; 
/*query 9*/
select SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.colour='GREEN' and SUPPLY.sno NOT IN(select SUPPLY.sno from SUPPLY,PART where SUPPLY.pno=PART.pno and PART.COLOUR!='GREEN' );

select  distinct sname,address,pname from SUPPLY,SUPPLIER,PART where colour!='BLUE' and SUPPLIER.sno=SUPPLY.sno and PART.pno=SUPPLY.pno; 
/*Answer3*/

DELETE from PART where colour='GREEN';