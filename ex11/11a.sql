SET SERVEROUTPUT ON;
DECLARE
    len NUMBER;
    str VARCHAR2(20) := '&Input_String';
    chkstr VARCHAR2(20);

BEGIN
    len := LENGTH(str);
    FOR i IN REVERSE 1..len LOOP
        chkstr := chkstr||SUBSTR(str,i,1);
    END LOOP;
    IF chkstr = str THEN
        DBMS_OUTPUT.PUT_LINE(str||' Is A Palindrome!');
    ELSE
        DBMS_OUTPUT.PUT_LINE(str||' Is Not A Palindrome!');
    END IF;
END;
/
