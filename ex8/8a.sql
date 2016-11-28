CREATE TABLE employee
(
	SSN varchar2(10) PRIMARY KEY,
	Name varchar2(40) not null,
	DeptNo number(5) not null,
  Salary number(10) not null
);

INSERT INTO employee (SSN, Name, DeptNo, Salary) VALUES ('IS04','Manasa', 4 , 40000 );
INSERT INTO employee (SSN, Name, DeptNo, Salary) VALUES ('IS05','Anusha', 3 , 30000);
INSERT INTO employee (SSN, Name, DeptNo, Salary) VALUES ('IS06','Anisha', 10,  20000);
INSERT INTO employee (SSN, Name, DeptNo, Salary) VALUES ('IS07','Amisha', 10 , 20000);

SET SERVEROUTPUT ON;

DECLARE
  CURSOR emp_cur IS
    SELECT *
      FROM employee;

BEGIN
  dbms_output.put_line('Employee Table');
  dbms_output.put_line('SSN    Name      DeptNo   Salary');

  FOR rec IN emp_cur LOOP
  dbms_output.put_line(rec.ssn || '    ' || rec.name || '       ' || rec.deptno || '    ' || rec.salary);
  END LOOP;

	update employee
	   set salary = ( 1.15 * salary ) where deptno = 10;
	dbms_output.put_line('Number of rows updated are '||sql%rowcount);

  dbms_output.put_line('Updated Employee Table');
  dbms_output.put_line('SSN    Name      DeptNo   Salary');

  FOR rec IN emp_cur LOOP
  dbms_output.put_line(rec.ssn || '    ' || rec.name || '       ' || rec.deptno || '    ' || rec.salary);
  END LOOP;

END;
/
