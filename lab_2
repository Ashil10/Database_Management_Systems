EXPERIMENT NO: 2
CUSTOMER-PRODUCT-PURCHASE Relations

AIM: Write queries to create and retrieve customer and product relationship, constraints, built in
functions, group by, Order by, View, Drop, Dml commands.
--Department table creation
CREATE TABLE product(
product_no varchar(15) not null primary key,
description varchar(15) not null,
company varchar(15) not null,
price integer not null
);
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
Name Null? Type
----------------------------------------- -------- ----------------------------
ORDER_NO NOT NULL VARCHAR2(15)
CUSTNO NOT NULL VARCHAR2(15)
PRODNO NOT NULL VARCHAR2(15)
QUANTITY NOT NULL NUMBER(38)
ORDERDATE DATE
--Insert values into product
INSERT INTO product VALUES ('P00001','12 W Flood Light','Wipro',5000);
INSERT INTO product VALUES ('P00002','Laptop Adapter','Dell',1560);
INSERT INTO product VALUES ('P00003','Tablet','HCL',11000);
INSERT INTO product VALUES ('P00004','Garnet 50W LED','Wipro',999);
INSERT INTO product VALUES ('P00005','Laptop Charger','HCL',1690);
PRODUCT_NO DESCRIPTION COMPANY PRICE
--------------- --------------- --------------- ----------
P00001 12W Flood Light Wipro 5000
P00002 Laptop Adapter Dell 1560
P00003 Tablet HCL 11000
P00005 Laptop Charger HCL 1690
P00004 Garnet 50W LED Wipro 999
--Insert values into customer
insert into customer values ('C00001','Ivan Byross',35,'Bombay',400054,'Maharastra');
insert into customer values ('C00002','Vandana Saitwal',35,'Madras',780001,'Tamilnadu');
insert into customer values ('C00003','Pramada Jaguste',55,'Bombay',400056,'Maharastra');
insert into customer values ('C00004','Basu Navindgi',45,'Bombay',400056,'Maharastra');
insert into customer values ('C00005','Ravi Sreedharan',25,'Delhi',100001,'Delhi');
insert into customer values ('C00006','Rukmini',25,'Madras',780001,'Tamilnadu');
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
S_NO SNAME AGE CITY
---------- --------------- ---------- ---------------
S001 Ivan Bayross 35 Bombay
S002 Nirmala Agarwal 35 Madras
S003 Susmitha 55 Bombay
S004 Basu Navindgi 45 Bombay
S005 Ravi Sreedharan 25 Delhi
S006 Nanda Gopal 25 Madras
--Insert values into purchase
insert into purchase values ('O00001','C00002','P00003',2,'20-01-2016');
insert into purchase values ('O00002','C00003','P00002',1,'27-01-2016');
insert into purchase values ('O00003','C00006','P00001',3,'20-02-2016');
insert into purchase values ('O00004','C00003','P00005',4,'07-04-2016');
insert into purchase values ('O00005','C00004','P00002',2,'22-05-2016');
insert into purchase values ('O00006','C00005','P00004',1,'26-05-2016');
ORDER_NO CUSTNO PRODNO QUANTITY ORDERDAT
--------------- --------------- --------------- ---------- --------
O00001 C00002 P00003 2 20-01-16
O00002 C00003 P00002 1 27-01-16
O00003 C00006 P00001 3 20-02-16
O00004 C00003 P00005 4 07-04-16
O00005 C00004 P00002 2 22-05-16
O00006 C00005 P00004 1 26-05-16
1 List all customer in Madras.
Select *
from customer
where city='Madras';
CUST_NO NAME AGE CITY PINCODE STATE
--------------- --------------- ---------- --------------- ---------- --------------
C00002 Vandana Saitwal 35 Madras 780001 Tamilnadu
C00006 Rukmini 25 Madras 780001 Tamilnadu
2 List all customer numbers of all who purchase the product in month of January.
select custno
from purchase
where orderdate like '%-01-%';
CUSTNO
---------------
C00002
C00003
3 List all the name of company whose price in greater than 5000
select company from product
where price>5000;
COMPANY
---------------
HCL
4 List all the customers whoses name is not beginning with 'r'.
select name from customer
where name not like 'R%';
NAME
---------------
Ivan Byross
Vandana Saitwal
Pramada Jaguste
Basu Navindgi
5 Add email field into the customer table
alter table customer add (email varchar(20));
Table altered.
Name Null? Type
----------------------------------------- -------- ----------------------------
CUST_NO NOT NULL VARCHAR2(15)
NAME NOT NULL VARCHAR2(15)
AGE NOT NULL NUMBER(38)
CITY NOT NULL VARCHAR2(15)
PINCODE NOT NULL NUMBER(38)
STATE NOT NULL VARCHAR2(15)
EMAIL VARCHAR2(20)
6 List all the customers whoses age is greater than 40 in Maharastra.
select name from customer
where age>40 and state='Maharastra';
NAME
---------------
Pramada Jaguste
Basu Navindgi
7 Display the companys name in the increasing order of price.
select company from product
order by price;
COMPANY
---------------
Wipro
Dell
HCL
Wipro
HCL
8 Calcualte average age of customers from table customer.
select avg(age)
from customer;
AVG(AGE)
----------
36.6666667
9 List cities of customer from states Maharastra and Tamil Nadu.
select city
from customer
where state='Maharastra' or state='Tamilnadu';
CITY
---------------
Bombay
Madras
10 Find average price from table product
select avg(price)
from product;
AVG(PRICE)
----------
4049.8
11 List all customer nos in the increasing order of quantity from table purchase
select custno from purchase
order by quantity;
CUSTNO
---------------
C00003
C00005
C00002
C00004
C00006
C00003
12 Update product no of customer number C00003 to P00008.
insert into Product values('P00008','Led Light','HP',9000);
1 row created.
Update purchase set prodno='P00008'
where custno='C00003';
2 rows updated.
ORDER_NO CUSTNO PRODNO QUANTITY ORDERDAT
--------------- --------------- --------------- ---------- --------
O00001 C00002 P00003 2 20-01-16
O00002 C00003 P00008 1 27-01-16
O00003 C00006 P00001 3 20-02-16
O00004 C00003 P00008 4 07-04-16
O00005 C00004 P00002 2 22-05-16
O00006 C00005 P00004 1 26-05-16
13 Find the number of customers from city Delhi.
select count(*)
from customer
where city='Delhi';
COUNT(*)
----------
1
14 List customer number of all customers who have purchased more than 3 items.
select custno
from purchase
where quantity>3;
CUSTNO
---------------
C00003
15 Modify the structure of order date field in the purchase into character
alter table purchase modify orderdate char(10);
table altered.
16 Find min and max price from product table.
select min(price) as minimumPrice, max(price) as maximumPrice
from product;
MINIMUMPRICE MAXIMUMPRICE
------------ ------------
999 11000
17 Find number of products by Wipro and HCL.
select company,count(*)
from product
group by company
having company='HCL'or company='Wipro';
COMPANY COUNT(*)
--------------- ----------
Wipro 2
HCL 2
18 List all the customers in alphabetical order
select name
from customer
order by name;
NAME
---------------
Basu Navindgi
Ivan Byross
Pramada Jaguste
Ravi Sreedharan
Rukmini
Vandana Saitwal
19 Sort the content of purchase table in descending order of date.
select *
from purchase
order by orderdate desc;
ORDER_NO CUSTNO PRODNO QUANTITY ORDERDAT
--------------- --------------- --------------- ---------- --------
O00006 C00005 P00004 1 26-05-16
O00005 C00004 P00002 2 22-05-16
O00004 C00003 P00005 4 07-04-16
O00003 C00006 P00001 3 20-02-16
O00002 C00003 P00002 1 27-01-16
O00001 C00002 P00003 2 20-01-16
20 Delete the product with product_no = P00003
delete from purchase where prodno='P00003';
1 row deleted
delete from product
where product_no='P00003';
PRODUCT_NO DESCRIPTION COMPANY PRICE
--------------- --------------- --------------- ----------
P00001 12W Flood Light Wipro 5000
P00002 Laptop Adapter Dell 1560
P00005 Laptop Charger HCL 1690
P00004 Garnet 50W LED Wipro 999
21 Copy the contents of field order_no and orderdate of purchase table into new table.
Create table newtable(order_no varchar(15), orderdate date);
insert into newtable value(
select order_no, orderdate
from purchase);
ORDER_NO ORDERDAT
--------------- --------
O00001 20-01-16
O00002 27-01-16
O00003 20-02-16
O00004 07-04-16
O00005 22-05-16
O00006 26-05-16
22 Delete the newly created table.
drop table newtable;
Table dropped
23 Create view of customer table.
Create view cstar as
select *
from customer;
View created
24 List names of customers who have placed more than one order.
select distinct name
from customer,purchase
where custno=cust_no
and custno in(
select custno
from purchase
group by custno
having count(*)>1);
NAME
---------------
Pramada Jaguste
25 Retrieve transaction details of customer who lives in same city, obtain the result through self -
join and correlated join.
select PURCHASE.*,customer.city from purchase inner join customer on
purchase.custno=customer.cust_no where customer.city in(
select city from customer group by city having count(*)>1);
ORDER_NO CUSTNO PRODNO QUANTITY ORDERDAT CITY
--------------- --------------- --------------- ---------- -------- ---------------
O00004 C00003 P00008 4 07-04-16 Bombay
O00002 C00003 P00008 1 27-01-16 Bombay
O00005 C00004 P00002 2 22-05-16 Bombay
O00003 C00006 P00001 3 20-02-16 Madras
26 Retrieve customer names starting with ‘R’.
select name from customer
where name like 'R%';
NAME
---------------
Ravi Sreedharan
Rukmini
27 List names of persons who are either a supplier or a customer.
select distinct name
from customer, supplier;
NAME
---------------
Vandana Saitwal
Ivan Byross
Pramada Jaguste
Basu Navindgi
Ravi Sreedharan
Rukmini
Nirmala Agarwal
Nanda Gopal
Susmitha
