# DBMSLAB

First Time:
Launch plsql by running 
  
     sqlplus sys as sysdba

then create your own user

    create user dbmsuser identified by root;
    grant connect to dbmsuser;
    grant all privileges to dbmsuser identified by root;


exit and reconnect as 
    
    sqlplus dbmsuser;
