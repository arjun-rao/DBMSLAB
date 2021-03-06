
create table branch (
	code varchar2(5) primary key,
	name varchar2(20) not null,
	assets number(10) not null
);

create table customer (
	ssn varchar2(10) primary key,
	name varchar2(20) not null,
	place varchar2(20) not null
);


create table account (
	accno varchar2(10) primary key,
	ssn varchar2(10) not null,
	code varchar2(5) not null,
	balance number(10) not null,
	CONSTRAINT fk_ssn FOREIGN KEY (ssn) REFERENCES customer(ssn),
        CONSTRAINT fk_code FOREIGN KEY (code) REFERENCES branch(code)	
);



insert into branch(code,name,assets) values ('B1','MSR','10000');
insert into branch(code,name,assets) values ('B2','RNR','20000');
insert into branch(code,name,assets) values ('B3','SMR','15000');
insert into branch(code,name,assets) values ('B4','SKR','25000');

insert into customer(ssn,name,place) values ('1','Ram','BNG');
insert into customer(ssn,name,place) values ('2','Asha','MNG');
insert into customer(ssn,name,place) values ('3','Usha','MYS');
insert into customer(ssn,name,place) values ('4','Sri','DEL');

insert into account(accno,ssn,code,balance) values ('A1',1,'B1','100000');
insert into account(accno,ssn,code,balance) values ('A2',1,'B1','200000');
insert into account(accno,ssn,code,balance) values ('A3',2,'B2','100000');
insert into account(accno,ssn,code,balance) values ('A4',3,'B2','100000');
insert into account(accno,ssn,code,balance) values ('A5',3,'B2','100000');
insert into account(accno,ssn,code,balance) values ('A6',3,'B2','100000');
insert into account(accno,ssn,code,balance) values ('A7',4,'B2','200000');



