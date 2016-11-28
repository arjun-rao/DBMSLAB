CREATE TABLE employee
(
	ssn varchar2(10) PRIMARY KEY,
	name varchar2(40) not null,
	deptno number not null,	
	sal number not null
);

CREATE TABLE dept
(
	deptno number PRIMARY KEY,
	name varchar2(40) not null
);

CREATE TABLE project
(
	ProjectNo number PRIMARY KEY,
	ProjectArea varchar2(255)
);
CREATE TABLE assigned_to
(
	SSN varchar2(10) not null,
	ProjectNo number not null,
	FOREIGN KEY (SSN) REFERENCES employee(SSN) ON DELETE CASCADE,
	FOREIGN KEY (ProjectNo) REFERENCES project(ProjectNo) ON DELETE CASCADE
);


insert into dept(deptno,name) values (1,'sales');
insert into dept(deptno,name) values (2,'accounts');
insert into dept(deptno,name) values (3,'engineering');
insert into dept(deptno,name) values (4,'design');
insert into dept(deptno,name) values (5,'hr');

insert into employee(ssn,name,deptno,sal) values('IS02','Aditya',1,10000);
insert into employee(ssn,name,deptno,sal) values('IS03','Ayush',2,10000);
insert into employee(ssn,name,deptno,sal) values('IS04','Apeksha',4,10000);
insert into employee(ssn,name,deptno,sal) values('IS05','Anusha',3,10000);
insert into employee(ssn,name,deptno,sal) values('IS06','Anisha',1,10000);
insert into employee(ssn,name,deptno,sal) values('IS07','Amisha',2,10000);
insert into employee(ssn,name,deptno,sal) values('IS08','Akshatha',1,10000);
insert into employee(ssn,name,deptno,sal) values('IS09','Amrutha',3,10000);
insert into employee(ssn,name,deptno,sal) values('IS10','Amritha',4,10000);
insert into employee(ssn,name,deptno,sal) values('IS11','Arpitha',5,10000);


INSERT INTO project (ProjectNo, ProjectArea) VALUES (124,'Adhoc Networks');
INSERT INTO project (ProjectNo, ProjectArea) VALUES (125,'Databases');
INSERT INTO project (ProjectNo, ProjectArea) VALUES (126,'OOPS');
INSERT INTO project (ProjectNo, ProjectArea) VALUES (127,'Graphics');
INSERT INTO project (ProjectNo, ProjectArea) VALUES (123,'Testing');


INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS01',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS02',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS03',124);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS04',124);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS05',125);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS06',125);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS07',126);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS08',126);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS09',127);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS10',127);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS11',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS03',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS04',127);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS05',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS06',127);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS07',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS08',123);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS06',124);
INSERT INTO assigned_to (SSN, ProjectNo) VALUES ('IS08',127);

