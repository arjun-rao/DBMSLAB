CREATE TABLE part
(
	PNO varchar2(2) PRIMARY KEY,
	PNAME varchar2(40) not null,
	COLOR varchar2(10) not null
);
CREATE TABLE supplier
(
	WNO varchar2(2) PRIMARY KEY,
	SNAME varchar2(20) not null,
	CITY varchar2(20) not null
);
CREATE TABLE shipment
(
	WNO varchar2(2) not null,
	PNO varchar2(2) not null,
	QUANTITY varchar2(2) not null,
	SDATE varchar2(40) not null,
	FOREIGN KEY (PNO) REFERENCES part(PNO) ON DELETE CASCADE,
	FOREIGN KEY (WNO) REFERENCES supplier(WNO) ON DELETE CASCADE
);




INSERT INTO part (PNO,PNAME,COLOR) VALUES ('1', 'door', 'red');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('2', 'window', 'blue');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('3', 'Stereo', 'black');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('4', 'blub', 'yellow');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('5', 'bulb', 'white');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('6', 'oil', 'black');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('7', 'tires', 'black');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('8', 'taillamp', 'red');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('9', 'bolt', 'silver');
INSERT INTO part (PNO,PNAME,COLOR) VALUES ('10', 'steering cover', 'brown');

INSERT INTO supplier (WNO,SNAME,CITY) VALUES ('1' , 'Bob''s Garage', 'Bangalore');
INSERT INTO supplier (WNO,SNAME,CITY) VALUES ('2' , 'Smiths Auto Parts', 'Mumbai');
INSERT INTO supplier (WNO,SNAME,CITY) VALUES ('3' , 'John Cars', 'Kolkata');
INSERT INTO supplier (WNO,SNAME,CITY) VALUES ('4' , 'Cars by David', 'Chennai');
INSERT INTO supplier (WNO,SNAME,CITY) VALUES ('5' , 'Anthony Auto Store', 'Bangalore');

INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '1', '10', '11 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '2', '5', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '3', '5', '13 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '4', '4', '14 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '5', '3', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '6', '10', '15 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '7', '11', '13 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '8', '9', '1 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '9', '2', '5 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('1', '10', '1', '7 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('2', '2', '5', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('2', '3', '5', '13 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('2', '4', '4', '14 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('3', '5', '3', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('3', '6', '10', '15 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('3', '2', '5', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('3', '3', '5', '13 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('5', '4', '4', '14 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('5', '5', '3', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('5', '6', '10', '15 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('4', '4', '4', '14 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('4', '5', '3', '12 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('4', '6', '10', '15 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('5', '7', '11', '13 OCT 2016');
INSERT INTO shipment (WNO,PNO,QUANTITY,SDATE) VALUES ('4', '8', '9', '1 OCT 2016');
