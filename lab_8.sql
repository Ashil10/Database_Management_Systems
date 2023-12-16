EXPERIMENT NO.8
CONSUMER_ELECTRICITY BILL READING

--Creating consumer table
CREATE TABLE consumer_data(
consumer_no int primary key,
past_reading int not null,
present_reading int not null
);
SQL> desc consumer_data;
Name Null? Type
----------------------------------------------------------------
CONSUMER_NO NOT NULL NUMBER(38)
PAST_READING NOT NULL NUMBER(38)
PRESENT_READING NOT NULL NUMBER(38)
--Inserting values into consumer table
INSERT INTO consumer_data VALUES(101,1049,1362);
INSERT INTO consumer_data VALUES(102,215,269);
INSERT INTO consumer_data VALUES(103,750,900);
INSERT INTO consumer_data VALUES(104,5000,6400);
INSERT INTO consumer_data VALUES(105,20,80);
INSERT INTO consumer_data values(106,2000,2800);
SQL> select * from consumer_data;
CONSUMER_NO PAST_READING PRESENT_READING
----------- ------------ ---------------
101 1049 1362
102 215 269
103 750 900
104 5000 6400
105 20 80
106 2000 2800
PL/SQL Code
SET SERVEROUTPUT ON;
ACCEPT x CHAR PROMPT 'Enter Consumer Number: ';
DECLARE
CURSOR consumers IS SELECT * FROM consumer_data;
units FLOAT;
totalunit FLOAT;
present FLOAT;
bill FLOAT;
custno int;
BEGIN
custno:=&x;
FOR i IN consumers LOOP
IF(i.consumer_no=custno) THEN
bill:=0;
units:=i.present_reading-i.past_reading;
totalunit:=units;
IF(units>500) THEN
bill:= bill+ 100*5 + 200*7.5 + 200*15;
units:=units-500;
bill:= bill + units*22.5;
ELSIF(units>300) THEN
bill:= bill+ 100*5 + 200*7.5;
units:=units-300;
bill:= bill + units*15;
ELSIF(units>100) THEN
bill:= bill + 100*5;
units:=units-100;
bill:=bill + units*7.5;
ELSE
bill:=units*5;
END IF;
DBMS_OUTPUT.PUT_LINE('Consumer Number : ' || i.consumer_no);
DBMS_OUTPUT.PUT_LINE('Units consumed : ' || totalunit);
DBMS_OUTPUT.PUT_LINE('Total Bill amount: ' || bill);
END IF;
END LOOP;
END;
/
OUTPUT
Enter Consumer Number: 106
old 10: custno:=&x;
new 10: custno:=106;
Consumer Number : 106
Units consumed : 800
Total Bill amount: 11750
