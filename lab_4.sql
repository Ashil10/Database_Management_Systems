EXPERIMENT NO:4 CUSTOMER RELATIONS

AIM: Write queries to create and retrieve data from the customer
--Customer table creation
CREATE TABLE Customer1(
cust_id int primary key,
cust_name varchar(15) not null,
city varchar(15) not null,
amount int not null,
discount int not null,
salesman_id varchar(15) not null
);
SQL> desc customer1;
Name Null? Type
----------------------------------------- -------- ----------------------------
CUST_ID NOT NULL NUMBER(38)
CUST_NAME NOT NULL VARCHAR2(15)
CITY NOT NULL VARCHAR2(15)
AMOUNT NOT NULL NUMBER(38)
DISCOUNT NOT NULL NUMBER(38)
SALESMAN_ID NOT NULL VARCHAR2(15)
--insert values into customer1
INSERT INTO customer1 values(100,'Deepa','Trivandrum',1050,2,'K0010');
INSERT INTO customer1 values(101,'Don','Trivandrum',8040,4,'K0010');
INSERT INTO customer1 values(102,'Manacy','Kollam',20030,6,'A200tmp');
INSERT INTO customer1 values(103,'Karthika','Ernakulam',8400,20,'EkmX1050');
INSERT INTO customer1 values(104,'Tulasi','Ernakulam',2500,2,'EkmY2342');
INSERT INTO customer1 values(105,'Roy','Trivandrum',2900,3200,'L1045');
INSERT INTO customer1 values(106,'Vivek','Trivandrum',3200,8,'L1045');
INSERT INTO customer1 values(108,'Bhasi','Kottayam',12860,10,'KtmP1028');
INSERT INTO customer1 values(109,'Anurag','Kottayam',3860,12,'KtmB158tmp');
INSERT INTO customer1 values(110,'antony','Kottayam',9800,8,'KtmP1028');
INSERT INTO customer1 values(111,'Meeran','Trichur',6700,6,'R3085');
SQL> select * from customer1;
CUST_ID CUST_NAME CITY AMOUNT DISCOUNT SALESMAN_ID
---------- --------------- --------------- ---------- ---------- ---------------
100 Deepa Trivandrum 1050 2 K0010
101 Don Trivandrum 8040 4 K0010
102 Manacy Kollam 20030 6 A200tmp
103 Karthika Ernakulam 8400 20 EkmX1050
104 Tulasi Ernakulam 2500 2 EkmY2342
105 Roy Trivandrum 2900 4 L1045
106 Vivek Trivandrum 3200 8 L1045
108 Bhasi Kottayam 12860 10 KtmP1028
109 Anurag Kottayam 3860 12 KtmB158tmp
110 Antony Kottayam 9800 8 KtmP1028
111 Meeran Trichur 6700 6 R3085
QUERIES
1. Select all customers with a customername starting with 'a'.
SQL> Select * from customer1 where cust_name like 'a%';
CUST_ID CUST_NAME CITY AMOUNT DISCOUNT SALESMAN_ID
---------- --------------- --------------- ---------- ---------- ---------------
110 antony Kottayam 9800 8 KtmP1028
2. Select all customers with a customername starting with 'a' or 'A'.
SQL> Select * from customer1 where cust_name like 'a%' or cust_name like 'A%';
CUST_ID CUST_NAME CITY AMOUNT DISCOUNT SALESMAN_ID
---------- --------------- --------------- ---------- ---------- ---------------
109 Anurag Kottayam 3860 12 KtmB158tmp
110 antony Kottayam 9800 8 KtmP1028
3. Modify customer name such that all customer name start with capital letter.
SQL> update customer1 set
Cust_name=concat(upper(substr(Cust_name,1,1)),substr(Cust_name,2,length(Cust_name)-1));
11 rows updated.
SQL> select cust_name from customer1;
CUST_NAME
---------------
Deepa
Don
Manacy
Karthika
Tulasi
Roy
Vivek
Bhasi
Anurag
Antony
Meeran
4. Find city values ending with 'a'.
SQL> select city from customer1 where city like '%a';
no rows selected
5. Return first 3 characters of saleman_id.
SQL> select substr(salesman_ID,1,3) as saleID from customer1;
SALEID
------------
K00
K00
A20
Ekm
Ekm
L10
L10
Ktm
Ktm
Ktm
R30
6. Find salemen with 'tmp' in any position
SQL> select cust_name from customer1 where salesman_id like '%tmp%';
CUST_NAME
---------------
Manacy
Anurag
7. Find count of city values that start with 'T'.
SQL> select count(city) from customer1 where city like 'T%';
COUNT(CITY)
-----------
5
8. Select customer name that start with 'D' and of atleast 4 characters
SQL> select cust_name from customer1 where cust_name like 'D%' and length(cust_name)>3;
CUST_NAME
---------------
Deepa
9. Find city values that start with 'K' and are atleast 2 characters in length.
SQL> select distinct city from customer1 where city like 'K%' and length(city)>1;
CITY
---------------
Kollam
Kottayam
10. Find city values that start with 'K' and are atleast 7 characters in length
SQL> select distinct city from customer1 where city like 'K%' and length(city)>6;
CITY
---------------
Kottayam
11. Find city values that start with 'K' and end with 'm'.
SQL> select distinct city from customer1 where city like 'K%m';
CITY
---------------
Kollam
Kottayam
12. Display salesman details with saleman_ID,total amount given as discount
SQL> select salesman_id, sum((discount*amount)/100) as Total_discount,
concat(max(discount),'%') as max_Discount_percentage
from customer1 group by salesman_ID; 2
SALESMAN_ID TOTAL_DISCOUNT MAX_DISCOUNT_PERCENTAGE
--------------- -------------- -----------------------------------------
A200tmp 1201.8 6%
EkmX1050 1680 20%
KtmB158tmp 463.2 12%
R3085 402 6%
KtmP1028 2070 10%
K0010 342.6 4%
L1045 372 8%
EkmY2342 50 2%
13. Display city names in uppercase
SQL> select upper(city) from customer1;
UPPER(CITY)
---------------
TRIVANDRUM
TRIVANDRUM
KOLLAM
ERNAKULAM
ERNAKULAM
TRIVANDRUM
TRIVANDRUM
KOTTAYAM
KOTTAYAM
KOTTAYAM
TRICHUR
14. Update salesman_ID of all saleman from Ernakulam by removing prefix 'Ekm'
update customer1
set salesman_ID=substr(salesman_ID,4,length(salesman_ID))
where salesman_ID like 'Ekm%';
SQL> update customer1
set salesman_ID=substr(salesman_ID,4,length(salesman_ID))
where salesman_ID like 'Ekm%';
2 rows updated.
SQL> select * from customer1;
CUST_ID CUST_NAME CITY AMOUNT DISCOUNT SALESMAN_ID
---------- --------------- --------------- ---------- ---------- ---------------
100 Deepa Trivandrum 1050 2 K0010
101 Don Trivandrum 8040 4 K0010
102 Manacy Kollam 20030 6 A200tmp
103 Karthika Ernakulam 8400 20 X1050
104 Tulasi Ernakulam 2500 2 Y2342
105 Roy Trivandrum 2900 4 L1045
106 Vivek Trivandrum 3200 8 L1045
108 Bhasi Kottayam 12860 10 KtmP1028
109 Anurag Kottayam 3860 12 KtmB158tmp
110 Antony Kottayam 9800 8 KtmP1028
111 Meeran Trichur 6700 6 R3085
15. Display total sales amount of each sales person till today with todays date in dd-mon-yyyy
SQL> select salesman_id, sum(amount) as total_sales_amt, to_char(current_date) as curDate from
customer1 group by salesman_ID;
SALESMAN_ID TOTAL_SALES_AMT CURDATE
--------------- --------------- --------
X1050 8400 04-10-23
A200tmp 20030 04-10-23
Y2342 2500 04-10-23
KtmB158tmp 3860 04-10-23
R3085 6700 04-10-23
KtmP1028 22660 04-10-23
K0010 9090 04-10-23
L1045 6100 04-10-23
