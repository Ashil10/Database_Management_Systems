EXPERIMENT NO.9

--Creating honours student table
CREATE TABLE students(
rollno int primary key,
name varchar(16) not null,
s1_grade int not null,
s2_grade int not null
);
SQL> desc students
Name Null? Type
----------------------------------------- -------- ----------------------------
ROLLNO NOT NULL NUMBER(38)
NAME NOT NULL VARCHAR2(16)
S1_GRADE NOT NULL NUMBER(38)
S2_GRADE NOT NULL NUMBER(38)
--Insert values into students table
INSERT INTO students VALUES(1,'Peter Parker',8,7);
INSERT INTO students VALUES(2,'Bruce Banner',4,3);
INSERT INTO students VALUES(3,'Clark Kent',6,5);
INSERT INTO students VALUES(4,'Stephen Strange',6,8);
INSERT INTO students VAlues(5,'Miles Morales',9,6);
SQL> select * from students;
ROLLNO NAME S1_GRADE S2_GRADE
---------- ---------------- ---------- ----------
1 Peter Parker 8 7
2 Bruce Banner 4 3
3 Clark Kent 6 5
4 Stephen Strange 6 7
5 Miles Morales 9 6
PL/SQL Code
SET SERVEROUTPUT ON;
DECLARE
CURSOR std IS SELECT * FROM students WHERE s1_grade+s2_grade>12 order
by rollno;
highest FLOAT;
BEGIN
DBMS_OUTPUT.PUT_LINE('Students eligible for honours are:');
FOR i IN std LOOP
IF(i.s1_grade >= i.s2_grade) THEN
highest:=i.s1_grade;
ELSE
highest:=i.s2_grade;
END IF;
DBMS_OUTPUT.PUT_LINE('---');
DBMS_OUTPUT.PUT_LINE('Roll no:'||i.rollno);
DBMS_OUTPUT.PUT_LINE('Name :'||i.name);
DBMS_OUTPUT.PUT_LINE('Highest grade:'||highest);
END LOOP;
END;
/
OUTPUT
Students eligible for honours are:
---
Roll no:1
Name :Peter Parker
Highest grade:8
---
Roll no:4
Name :Stephen Strange
Highest grade:7
---
Roll no:5
Name :Miles Morales
Highest grade:9
