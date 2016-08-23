

CREATE TABLE employee
(
	SSN varchar(10) PRIMARY KEY,
	Name varchar(40) not null,
	DeptNo int(5) not null
);

CREATE TABLE project
(
	ProjectNo int(5) PRIMARY KEY,
	ProjectArea varchar(255)
);

CREATE TABLE assigned_to
(
	SSN varchar(10) not null,
	ProjectNo int(5) not null,
	FOREIGN KEY (SSN) REFERENCES employee(SSN),
	FOREIGN KEY (ProjectNo) REFERENCES project(ProjectNo)
);



INSERT INTO employee (SSN, Name, DeptNo) VALUES ('IS01','Affan', 1);
INSERT INTO project (ProjectNo, ProjectArea) VALUES (124,'Adhoc Networks'),(125,'Databases'),(126,'OOPS'),(127,'Graphics');

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


/*Queries

Create the above tables, insert suitable tuples and perform the following operations in SQL: */
--a.Obtain the SSN of employees assigned to database projects.
SELECT SSN from assigned_to where ProjectNo = (Select ProjectNo from project where ProjectArea like 'database%');

--b.Find the number of employees working in each department
select deptNo,count(SSN) as'employees' from employee group by deptNo;

--c.Update the ProjectNo of Employee bearing SSN=IS11 to ProjectNo=126
update assigned_to set ProjectNo = 126 where SSN = 'IS11';

--d.Display all the employee names assigned to database projects
Select name from employee where SSN in (SELECT SSN from assigned_to where ProjectNo = (Select ProjectNo from project where ProjectArea like 'database%')); 
--e.Display the number of employees working in each project
select assigned_to.ProjectNo,ProjectArea,count(SSN) as'employees' from assigned_to,project where project.ProjectNo = assigned_to.ProjectNo group by assigned_to.ProjectNo;


--on terminal mysqlimport -u ise18 -pise18 --fields-terminated-by=',' --local ise18 employee.csv
