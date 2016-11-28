SET SERVEROUTPUT ON;

DECLARE
	a number(5):= 0;
	b number(5):= 1;
	next number(5);
	series varchar(100);
	i number(5):= 2;

BEGIN
	series:= a||','||b;
	while(i < 8)
	loop
		next:= a + b;
		series:= series||','||next;
		a:= b;
		b:= next;
		i:= i + 1;
	end loop;
  dbms_output.put_line('First 8 numbers of the Fibonacci Series are');
	dbms_output.put_line(series);

END;
/
