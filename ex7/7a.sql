SET SERVEROUTPUT ON
DECLARE
	n number;
	i number;
	flag number;
BEGIN
        n:=&n;
        i:=1;
        flag:=0;
        if n=1
           then dbms_output.put_line('1 is neither prime nor composite.');
        elsif n=2
           then dbms_output.put_line('2 is even prime');
        else
           for i in 2..n/2 loop
               if mod(n,i)=0
                   then flag:= 1;
                   exit;
               end if;
           end loop;
       end if;
       if flag = 0
           then dbms_output.put_line(n||' is a prime No.');
       else
           dbms_output.put_line(n||' is a not prime No.');
       end if;
END;
/
