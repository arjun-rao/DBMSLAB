CREATE OR REPLACE TRIGGER employee_update_block 
	BEFORE INSERT OR UPDATE OR DELETE ON employee
DECLARE
	v_day varchar2(10);
BEGIN
	v_day := RTRIM(TO_CHAR(SYSDATE,'DAY'));

	IF v_day LIKE ('M%') THEN 
		RAISE_APPLICATION_ERROR(-20000,'Table cannot be modified on Mondays');

	END IF;
END;
/
