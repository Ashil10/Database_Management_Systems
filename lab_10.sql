EXPERIMENT NO.10
TRIGGER CREATION
  
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
INSERT INTO students VALUES(3,'Matt Murdock',6,5);
INSERT INTO students VALUES(4,'Stephen Strange',6,8);
INSERT INTO students VAlUES(5,'Miles Morales',9,6);
SQL> select * from students;
ROLLNO NAME S1_GRADE S2_GRADE
---------- ---------------- ---------- ----------
1 Peter Parker 8 7
2 Bruce Banner 4 3
3 Matt Murdock 6 5
4 Stephen Strange 6 8
5 Miles Morales 9 6
PL/SQL Code
CREATE OR REPLACE TRIGGER stud_trig
BEFORE
INSERT OR
UPDATE OF rollno,name,s1_grade,s2_grade OR
DELETE ON students FOR EACH ROW
BEGIN
CASE
WHEN INSERTING THEN
DBMS_OUTPUT.PUT_LINE('Inserting '|| :new.name);
WHEN UPDATING ('rollno') THEN
DBMS_OUTPUT.PUT_LINE('Updating '|| :new.name|| ' roll number to
'|| :new.rollno);
WHEN UPDATING ('name') THEN
DBMS_OUTPUT.PUT_LINE('Updated '|| :old.name||' to '|| :new.name);
WHEN UPDATING ('s1_grade') THEN
DBMS_OUTPUT.PUT_LINE('Updating '|| :new.name|| ' grade from
'||:old.s1_grade||' to '|| :new.s1_grade);
WHEN UPDATING ('s2_grade') THEN
DBMS_OUTPUT.PUT_LINE('Updating '|| :new.name|| ' grade from
'||:old.s2_grade||' to '|| :new.s2_grade);
WHEN DELETING THEN
DBMS_OUTPUT.PUT_LINE('Deleting '|| :old.name);
END CASE;
END;
/
OUTPUT
SQL> INSERT INTO students VAlUES(6,'Rocket Raccoon',10,1);
Inserting Rocket Raccoon
1 row created.
SQL> UPDATE students SET rollno=7 where name='Rocket Raccoon';
Updating Rocket Raccoon roll number to 7
1 row updated.
SQL> UPDATE students SET name='Bucky Barnes' WHERE rollno=7;
Updated Rocket Raccoon to Bucky Barnes
1 row updated.
SQL> UPDATE students SET s2_grade=5 WHERE rollno=7;
Updating Bucky Barnes grade from 1 to 5
1 row updated.
SQL> DELETE FROM students WHERE rollno=7;
Deleting Bucky Barnes
1 row deleted.
