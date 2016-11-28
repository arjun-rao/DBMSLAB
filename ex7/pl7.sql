SET SERVEROUTPUT ON
DECLARE
	n number;
	i number;
	counter number;
BEGIN
        n:=&n;
        i:=1;
        counter:=0;
        if n=1
           then dbms_output.put_line('1 is neither prime nor composite.');
       elsif n=2
           then dbms_output.put_line('2 is even prime');
       else
           for i in 1..n loop
               if mod(n,i)=0
                   then counter:=counter+1;
               end if;
           end loop;
     end if;
       if counter=2
           then dbms_output.put_line(n||' is a prime No.');
       else
           dbms_output.put_line(n||' is a not prime No.');
       end if;
END;
/
