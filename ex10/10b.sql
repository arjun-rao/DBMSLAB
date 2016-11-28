SET SERVEROUTPUT ON
DECLARE
    dept number;
    CURSOR emp_cur IS
       SELECT ssn,name FROM employee where deptno = dept;

BEGIN
    dbms_output.put_line('Displaying Records for Department:');
    dept := &dept;
    dbms_output.put_line('SSN, Name of employees in department '|| dept);
   
    FOR rec iN emp_cur LOOP
	dbms_output.put_line(rec.ssn||', '||rec.name);
    END LOOP;      

END;
/
