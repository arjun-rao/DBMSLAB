CREATE TABLE sailor(
	SID number(5) primary key,
	SNAME varchar2(20) NOT NULL,
	AGE number(5) NOT NULL,
	RATING number(5) NOT NULL
);

CREATE TABLE sailorCopy(
	SID number(5) primary key,
	SNAME varchar2(20) NOT NULL,
	AGE number(5) NOT NULL,
	RATING number(5) NOT NULL
);

INSERT into sailor(SID, SNAME, AGE, RATING) values (101, 'brad', 20, 9.9);
INSERT into sailor(SID, SNAME, AGE, RATING) values (102, 'lucy', 21, 9.8);
INSERT into sailor(SID, SNAME, AGE, RATING) values (103, 'mary', 18, 9.3);
INSERT into sailor(SID, SNAME, AGE, RATING) values (104, 'john', 24, 9.1);
INSERT into sailor(SID, SNAME, AGE, RATING) values (105, 'will', 25, 9.0);

SET SERVEROUTPUT ON

DECLARE
  CURSOR curr IS
    select * from SAILOR;

  counter int;
  rows SAILOR%rowtype;

 CURSOR sailor_curr IS
         SELECT *
           FROM sailorCopy;

BEGIN
  open curr;
  loop
    fetch curr into rows ;
    exit when curr%notfound;
    insert into sailorCopy (SID, SNAME, AGE, RATING) values(rows.sid,rows.sname,rows.age,rows.rating);
  end loop;
  counter := curr%rowcount;
  close curr;

  dbms_output.put_line(counter||' rows inserted into the table sailorCopy ');

  dbms_output.put_line('Sailor Copy Table');
  dbms_output.put_line('SID    Name    Age   Rating');

  FOR rec IN sailor_curr LOOP
    dbms_output.put_line(rec.sid || '    ' || rec.sname || '    ' || rec.age || '    ' || rec.rating);
  END LOOP;

END;
/
