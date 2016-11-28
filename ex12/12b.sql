SET SERVEROUTPUT ON;
DECLARE
   CURSOR part_supplier is 
	select * from supplier where WNO in (select WNO from shipment where PNO = '5');
BEGIN
	dbms_output.put_line('Suppliers who supply part p234:');
	for rec in part_supplier LOOP
		dbms_output.put_line(rec.SNAME);
	END LOOP;
END;
/
