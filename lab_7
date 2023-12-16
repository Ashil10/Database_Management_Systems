EXPERIMENT NO.7
CUSTOMER CATEGORY

CREATE TABLE customers(
customer_id integer primary key,
customer_name varchar(15) not null,
account_balance integer not null
);
SQL> desc customers;
Name Null? Type
------------------------------ -------- --------------------
CUSTOMER_ID NOT NULL NUMBER(38)
CUSTOMER_NAME NOT NULL VARCHAR2(15)
ACCOUNT_BALANCE NOT NULL NUMBER(38)
INSERT INTO customers VALUES(1,'Chandler',60000);
INSERT INTO customers VALUES(2,'Joey',2000);
INSERT INTO customers VALUES(3,'Pheobe',5000);
INSERT INTO customers VALUES(4,'Rachel',55000);
INSERT INTO customers VALUES(5,'Monica',40000);
INSERT INTO customers VALUES(6,'Ross',20000);
SQL> select * from customers;
CUSTOMER_ID CUSTOMER_NAME ACCOUNT_BALANCE
----------- --------------- ---------------
1 Chandler 60000
2 Joey 2000
3 Pheobe 5000
4 Rachel 55000
5 Monica 40000
6 Ross 20000
PL/SQL Code
CREATE OR REPLACE FUNCTION dc(p_balance NUMBER)
RETURN VARCHAR is v_category VARCHAR(10);
BEGIN
IF p_balance > 50000 THEN
v_category:='Platinum';
END IF;
IF p_balance <= 50000 AND p_balance>10000 THEN
v_category:='Gold';
END IF;
IF p_balance <= 10000 THEN
v_category:='Silver';
END IF;
RETURN v_category;
END;
/
OUTPUT
SQL> select customer_id,customer_name,account_balance, dc(account_balance) FROM
customers;
CUST_ID CUST_NAME ACCOUNT_BALANCE CATEGORY
------------ ------------------- ------------------------------- -------------------
1 Chandler 60000 Platinum
2 Joey 2000 Silver
3 Pheobe 5000 Silver
4 Rache 55000 Platinum
5 Monia 40000 Gold
6 Ross 20000 Gold
