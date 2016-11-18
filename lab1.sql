SET SERVEROUTPUT ON
DECLARE
   CURSOR branch_cur IS
       SELECT * 
         FROM branch;
   CURSOR account_cur IS
       SELECT * 
         FROM account;
   CURSOR customer_cur IS
       SELECT * 
         FROM customer;
BEGIN

   
    -- Print out branch table
   dbms_output.put_line('Branch Table'); 	
   dbms_output.put_line('Code    Name    Assets');

   FOR rec IN branch_cur LOOP
	dbms_output.put_line(rec.code || '    ' || rec.name || '    ' || rec.assets);
   END LOOP;

    -- Print out account table
   

   dbms_output.put_line('Account Table');
   dbms_output.put_line('ACCNO     SSN     CODE     BALANCE');
   FOR rec IN account_cur LOOP
	dbms_output.put_line(rec.accno || '    ' || rec.ssn || '    ' || rec.code || '    ' || rec.balance);
   END LOOP;

   -- Print out Customer table
   
   dbms_output.put_line('Customer Table');
   dbms_output.put_line('SSN    Name    Place');
   FOR rec IN customer_cur LOOP
	dbms_output.put_line(rec.ssn || '    ' || rec.name || '    ' || rec.place);
   END LOOP;

   UPDATE account SET balance = 300000 WHERE balance > 100000;   

   
   dbms_output.put_line('New Account Table');
   dbms_output.put_line('ACCNO     SSN     CODE     BALANCE');
   FOR rec IN account_cur LOOP
	dbms_output.put_line(rec.accno || '    ' || rec.ssn || '    ' || rec.code || '    ' || rec.balance);
   END LOOP;

END;
/
