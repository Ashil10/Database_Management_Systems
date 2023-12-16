EXPERIMENT NO.12
TRAIN

--Creating table Trains
CREATE TABLE trains(
tno int primary key,
tname varchar(15) not null,
destination varchar(15) not null,
Tdate date not null,
tseat int not null
);
SQL> desc trains;
Name Null? Type
----------------------------------------- -------- ----------------------------
TNO NOT NULL NUMBER(38)
TNAME NOT NULL VARCHAR2(15)
DESTINATION NOT NULL VARCHAR2(15)
TDATE NOT NULL DATE
TSEAT NOT NULL NUMBER(38)
PL/SQL PROGRAM
A)
SET SERVEROUTPUT ON;
CREATE SEQUENCE trainseq;
CREATE OR REPLACE TRIGGER train_trigger
BEFORE
INSERT ON trains FOR EACH ROW
BEGIN
SELECT trainseq.nextval into :new.tno from dual;
END;
/
B)
SET SERVEROUTPUT ON;
ACCEPT x CHAR PROMPT '1.Reserve 2.Cancel'
DECALRE
ch VARCHAR(2);
t_seat NUMBER;
t_no NUMBER;
num NUMBER;
BEGIN
ch:=&x;
t_no:=&t_no;
num:=&num;
SELECT tseat INTO t_seat FROM trains where tno=t_no;
CASE ch
WHEN '1' THEN
IF t_seat<num THEN
DBMS_OUTPUT.PUT_Line('Seats are not available');
ELSE
t_seat:=t_seat-num;
UPDATE trains set tseat=t_seat WHERE tno=t_no;
DBMS_OUTPUT.PUT_Line('Reservation completed '||t_seat);
DBMS_OUTPUT.PUT_Line('Seats are available');
END IF;
WHEN '2' THEN
t_seat:=t_seat+num;
DBMS_OUTPUT.PUT_Line('Cancellation complete'||''||t_seat);
UPDATE trains set tseat=t_seat WHERE tno=t_no;
DBMS_OUTPUT.PUT_Line('Seats are available');
END CASE;
END;
/
--INSERTING VALUES INTO trains
INSERT INTO trains VALUES(null,'Pamba','Banglore','12-11-2023',117);
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEAT
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 117
INSERT INTO trains VALUES(null,'Ganga','Mumbai','12-10-2023',78);
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEAT
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 117
2 Ganga Mumbai 12-10-23 78
INSERT INTO trains VALUES(null,'Rajadhani','Himachal','09-12-2023',58);
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEAT
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 117
2 Ganga Mumbai 12-10-23 78
3 Rajadhani Himachal 09-12-23 58
SQL> @/home/cs-db-24/Jithin/Lab12.sql
1.Reserve 2.Cancel 1
old 7: ch:=&x;
new 7: ch:=1;
Enter value for t_no: 1
old 8: t_no:=&t_no;
new 8: t_no:=1;
Enter value for num: 20
old 9: num:=&num;
new 9: num:=20;
Reservation completed 97
Seats are available
PL/SQL procedure successfully completed.
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEAT
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 97
2 Ganga Mumbai 12-10-23 78
3 Rajadhani Himachal 09-12-23 58
SQL> @/home/cs-db-24/Jithin/Lab12.sql
1.Reserve 2.Cancel 1
old 7: ch:=&x;
new 7: ch:=1;
Enter value for t_no: 3
old 8: t_no:=&t_no;
new 8: t_no:=3;
Enter value for num: 60
old 9: num:=&num;
new 9: num:=60;
Seats are not available
PL/SQL procedure successfully completed.
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEAT
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 97
2 Ganga Mumbai 12-10-23 78
3 Rajadhani Himachal 09-12-23 58
SQL> @/home/cs-db-24/Jithin/Lab12.sql
1.Reserve 2.Cancel 2
old 7: ch:=&x;
new 7: ch:=2;
Enter value for t_no: 1
old 8: t_no:=&t_no;
new 8: t_no:=1;
Enter value for num: 15
old 9: num:=&num;
new 9: num:=15;
Cancellation complete112
Seats are available
PL/SQL procedure successfully completed.
SQL> select * from trains;
TNO TNAME DESTINATION TDATE TSEA T
---------- --------------- --------------- -------- ----------
1 Pamba Banglore 12-11-23 112
2 Ganga Mumbai 12-10-23 78
3 Rajadhani Himachal 09-12-23 58
