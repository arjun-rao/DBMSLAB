DECLARE
	--today date;
	--curr_day varchar2(15);

BEGIN
	--today:= sysdate;
	--curr_day:= to_char(today,'day');
	--curr_day:= initcap(curr_day); -- capitalises first letter
	--curr_day:= rtrim(curr_day);  -- removes whitespaces
  --dbms_output.put_line('Today is : '|| curr_day);
	dbms_output.put_line('Today is : '||to_char( sysdate ,'day'));

END;
/
