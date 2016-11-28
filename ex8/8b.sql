SET SERVEROUTPUT ON;

DECLARE
	n1 number(10);
	n2 number(10);
	e_bigger exception;

BEGIN
	n1:= & n1;
	n2:= & n2;
	if n1 < n2 then
		dbms_output.put_line('No error, n1 is smaller than n2');
	else
		raise e_bigger;
	end if;

EXCEPTION
   WHEN e_bigger THEN
	     dbms_output.put_line('Exception raised, n1 is larger than n2 ');

END;
/
