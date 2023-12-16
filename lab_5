EXPERIMENT NO:5
NESTED AND CORRELATED QUERIES

--Product table creation
CREATE TABLE product(
product_no varchar(15) not null primary key,
description varchar(15) not null,
company varchar(15) not null,
price integer not null
);
SQL> describe product;
Name Null? Type
----------------------------------------- -------- ----------------------------
PRODUCT_NO NOT NULL VARCHAR2(15)
DESCRIPTION NOT NULL VARCHAR2(15)
COMPANY NOT NULL VARCHAR2(15)
PRICE NOT NULL NUMBER(38)
--Customer Table Creation
CREATE TABLE customer(
cust_no varchar(15) not null primary key,
name varchar(15) not null,
age integer not null,
city varchar(15) not null,
pincode integer not null,
state varchar(15) not null
);
SQL> describe customer;
Name Null? Type
----------------------------------------- -------- ----------------------------
CUST_NO NOT NULL VARCHAR2(15)
NAME NOT NULL VARCHAR2(15)
AGE NOT NULL NUMBER(38)
CITY NOT NULL VARCHAR2(15)
PINCODE NOT NULL NUMBER(38)
STATE NOT NULL VARCHAR2(15)
--Supplier table creation
CREATE TABLE supplier(
s_no varchar(10) not null primary key,
sname varchar(15) not null,
age integer not null,
city varchar(15) not null
);
SQL> describe supplier;
Name Null? Type
----------------------------------------- -------- ----------------------------
S_NO NOT NULL VARCHAR2(10)
SNAME NOT NULL VARCHAR2(15)
AGE NOT NULL NUMBER(38)
CITY NOT NULL VARCHAR2(15)
--Purchase table creation
CREATE TABLE purchase(
order_no varchar(15) not null primary key,
custno varchar(15) not null,
foreign key (custno) references customer(cust_no) on delete cascade,
prodno varchar(15) not null,
foreign key (prodno) references product(product_no) on delete cascade,
quantity integer not null,
orderdate date
);
SQL> describe purchase;
Name Null? Type
----------------------------------------- -------- ----------------------------
ORDER_NO NOT NULL VARCHAR2(15)
CUSTNO NOT NULL VARCHAR2(15)
PRODNO NOT NULL VARCHAR2(15)
QUANTITY NOT NULL NUMBER(38)
ORDERDATE DATE
--Insert values into product
INSERT INTO product VALUES ('P00001','12W Flood Light','Wipro',5000);
INSERT INTO product VALUES ('P00002','Laptop Adapter','Dell',1560);
INSERT INTO product VALUES ('P00003','Tablet','HCL',11000);
INSERT INTO product VALUES ('P00004','Garnet 50W LED','Wipro',999);
INSERT INTO product VALUES ('P00005','Laptop Charger','HCL',1690);
SQL> select * from product;
PRODUCT_NO DESCRIPTION COMPANY PRICE
--------------- --------------- --------------- ----------
P00001 12W Flood Light Wipro 5000
P00002 Laptop Adapter Dell 1560
P00003 Tablet HCL 11000
P00004 Garnet 50W LED Wipro 999
P00005 Laptop Charger HCL 1690
--Insert values into customer
insert into customer values ('C00001','Ivan Byross',35,'Bombay',400054,'Maharastra');
insert into customer values ('C00002','Vandana Saitwal',35,'Madras',780001,'Tamilnadu');
insert into customer values ('C00003','Pramada Jaguste',55,'Bombay',400056,'Maharastra');
insert into customer values ('C00004','Basu Navindgi',45,'Bombay',400056,'Maharastra');
insert into customer values ('C00005','Ravi Sreedharan',25,'Delhi',100001,'Delhi');
insert into customer values ('C00006','Rukmini',25,'Madras',780001,'Tamilnadu');
SQL> select * from customer;
CUST_NO NAME AGE CITY PINCODE STATE
--------------- --------------- ---------- --------------- ---------- -------------
C00001 Ivan Byross 35 Bombay 400054 Maharastra
C00002 Vandana Saitwal 35 Madras 780001 Tamilnadu
C00003 Pramada Jaguste 55 Bombay 400056 Maharastra
C00004 Basu Navindgi 45 Bombay 400056 Maharastra
C00005 Ravi Sreedharan 25 Delhi 100001 Delhi
C00006 Rukmini 25 Madras 780001 Tamilnadu
--Insert values into supplier
insert into supplier values ('S001','Ivan Bayross',35,'Bombay');
insert into supplier values ('S002','Nirmala Agarwal',35,'Bombay');
insert into supplier values ('S003','Susmitha',55,'Bombay');
insert into supplier values ('S004','Basu Navindgi',45,'Bombay');
insert into supplier values ('S005','Ravi Sreedharan',25,'Delhi');
insert into supplier values ('S006','Nanda Gopal',25,'Madras');
SQL> select * from supplier;
S_NO SNAME AGE CITY
---------- --------------- ---------- ---------------
S001 Ivan Bayross 35 Bombay
S002 Nirmala Agarwal 35 Madras
S003 Susmitha 55 Bombay
S004 Basu Navindgi 45 Bombay
S005 Ravi Sreedharan 25 Delhi
S006 Nanda Gopal 25 Madras
--Insert values into purchase
insert into purchase values ('O00001','C00002','P00003',2,'20-JAN-2016');
insert into purchase values ('O00002','C00003','P00002',1,'27-JAN-2016');
insert into purchase values ('O00003','C00004','P00002',3,'28-JAN-2016');
insert into purchase values ('O00004','C00006','P00001',3,'20-FEB-2016');
insert into purchase values ('O00005','C00003','P00005',4,'07-APR-2016');
insert into purchase values ('O00006','C00004','P00002',2,'22-MAY-2016');
insert into purchase values ('O00007','C00005','P00004',1,'26-MAY-2016');
SQL> select * from purchase;
ORDER_NO CUSTNO PRODNO QUANTITY ORDERDAT
--------------- --------------- --------------- ---------- --------
O00001 C00002 P00003 2 20-01-16
O00002 C00003 P00002 1 27-01-16
O00003 C00004 P00002 3 28-01-16
O00004 C00006 P00001 3 20-02-16
O00005 C00003 P00005 4 07-04-16
O00006 C00004 P00002 2 22-05-16
O00007 C00005 P00004 1 26-05-16
NESTED QUERIES
1. List customer-numbers of all who purchased the product 'Laptop Adapter' during January
select custno from purchase where prodno in(
select product_no from product where description='Laptop Adapter') and orderdate
like '%-01-%';
CUSTNO
---------------
C00003
C00004
2. Get customer names of all who purchased P00002
SQL> select name from customer where cust_no in( select custno from purchase where
prodno='P00002');
NAME
---------------
Pramada Jaguste
Basu Navindgi
3. List customer-numbers of all who have purchased products with cost more than Rs 1600
SQL> select custno from purchase where prodno in(select product_no from product where
price>1600);
CUSTNO
---------------
C00002
C00006
C00003
4. List customer names of all who have purchased products with cost more than Rs 1500
during january
SQL> select name from customer where cust_no in(select custno from purchase where
prodno in(select product_no from product where price>1500) and orderdate like '%-01-%');
NAME
---------------
Pramada Jaguste
Basu Navindgi
Vandana Saitwal
5. List customer-numbers of all who have purchased products with cost less than Rs 1600
SQL> select custno from purchase where prodno in(select product_no from product where
price<1600);
CUSTNO
---------------
C00003
C00004
C00004
C00005
6. Get customer numbers of purchases such that the qty is more than maximum qty of all
purchases of C00002
SQL> select custno from purchase where quantity>(select max(quantity) from purchase
where custno='C00002');
CUSTNO
---------------
C00004
C00006
C00003
7. Get the name of all the customers who have not purchased any item currently
SQL> select name from customer where cust_no not in (select custno from purchase);
NAME
---------------
Ivan Byross
8. Get the name of all the customers who have purchased at least one item from Wipro
SQL> select name from customer where cust_no in (select custno from purchase where
prodno in(select product_no from product where company='Wipro'));
NAME
---------------
Rukmini
Ravi Sreedharan
CORRELATED QUERIES
1. List all customer number pairs such that cost of the item purchased by the first customer
is less than that of second customer
SQL> select distinct c1.custno as cust1, c2.custno as cust2 from purchase c1, purchase c2
where exists( select * from product p1, product p2 where c1.prodno=p1.product_no and
c2.prodno=p2.product_no and p1.price<p2.price);
CUST1 CUST2
--------------- ---------------
C00006 C00002
C00004 C00003
C00005 C00002
C00004 C00002
C00005 C00003
C00005 C00004
C00005 C00006
C00003 C00006
C00004 C00006
C00003 C00003
C00003 C00002
11 rows selected.
2. List pairs of customer-names of all who has purchased products with cost less than Rs
1600
SQL> select distinct c1.name as cust_name1 from customer c1, customer c2, purchase p1,
purchase p2 where c1.cust_no=p1.custno and c2.cust_no=p2.custno and exists ( select *
from product pr1, product pr2 where p1.prodno=pr1.product_no and
p2.prodno=pr2.product_no and pr1.price<1600 and pr2.price<1600) and c1.name <>
c2.name;
CUST_NAME
---------------
Ravi Sreedharan
Basu Navindgi
Ravi Sreedharan
3. Get product nos of all products purchased by more than one customer
SQL> select distinct prodno from purchase p1 where exists( select * from purchase p2
where p1.prodno=p2.prodno and p1.order_no <> p2.order_no);
PRODNO
---------------
P00002
4. Get the name of customers who have purchased the item P00002
SQL> select name from customer c1 where exists( select * from purchase p1 where
c1.cust_no=p1.custno and p1.prodno='P00002');
NAME
---------------
Pramada Jaguste
Basu Navindgi
5. Get the name of customers who have not purchased the item P00002
SQL> select name from customer c1 where not exists ( select * from purchase p1 where
c1.cust_no=p1.custno and p1.prodno='P00002');
NAME
---------------
Vandana Saitwal
Rukmini
Ravi Sreedharan
Ivan Byross
6. Get the name of customers who have purchased at least all those products purchased by
C00004.
SQL> select name from customer where cust_no in(select custno from purchase where
prodno in (select prodno from purchase where custno='C00004')) and cust_no<>'C00004';
NAME
---------------
Pramada Jaguste
