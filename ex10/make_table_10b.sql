CREATE TABLE employee
(
	ssn varchar2(10) PRIMARY KEY,
	name varchar2(40) not null,
	deptno number not null,	
	sal number not null
);

insert into employee(ssn,name,deptno,sal) values('IS02','Aditya',1,10000);
insert into employee(ssn,name,deptno,sal) values('IS03','Ayush',2,10000);
insert into employee(ssn,name,deptno,sal) values('IS04','Apeksha',4,10000);
insert into employee(ssn,name,deptno,sal) values('IS05','Anusha',3,10000);
insert into employee(ssn,name,deptno,sal) values('IS06','Anisha',5,10000);
insert into employee(ssn,name,deptno,sal) values('IS07','Amisha',2,10000);
insert into employee(ssn,name,deptno,sal) values('IS08','Akshatha',1,10000);
insert into employee(ssn,name,deptno,sal) values('IS09','Amrutha',3,10000);
insert into employee(ssn,name,deptno,sal) values('IS10','Amritha',4,10000);
insert into employee(ssn,name,deptno,sal) values('IS11','Arpitha',5,10000);
