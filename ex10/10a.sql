SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE factorial (num IN NUMBER) IS
    i NUMBER;
    f NUMBER:=1;
BEGIN
    FOR i IN 1..num LOOP
        f := f * i;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(num||'! = '||f);
END;
/

DECLARE
	n NUMBER;
BEGIN
	n:=&n;
	IF n <= 0 
	   THEN DBMS_OUTPUT.PUT_LINE('Invalid Number!');
	ELSE
	    factorial(n);
	END IF;
END;
/


