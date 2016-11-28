CREATE VIEW five_sales_projects AS
   select * from employee where ssn in (select ssn from (select ssn, count(ssn) "projects"  from assigned_to group by ssn having count(ssn)  > 2) a) and deptno in (select deptno from dept where name = 'sales');

