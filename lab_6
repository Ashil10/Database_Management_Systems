EXPERIMENT NO.6
AVERAGE STUDENT MARKS

--STUDENT table creation
CREATE TABLE STUDENT(
rollno integer primary key,
name varchar(15) not null,
mark1 integer not null,
mark2 integer not null,
mark3 integer not null
);
--insert values into STUDENT
INSERT INTO Student VALUES(1,'Micheal Scott',25,55,30);
INSERT INTO Student VALUES(2,'Dwight Schrute',80,0,40);
INSERT INTO Student VALUES(3,'Jim Halpert',20,35,45);
INSERT INTO Student VALUES(4,'Pam Beesly',80,90,70);
INSERT INTO Student VALUES(5,'Kevin',5,55,39);
PL/SQL Code
SET SERVEROUTPUT ON;
DECLARE
total_marks Number:=0;
average_marks Number;
class_day Varchar(20);
BEGIN
FOR student_rec IN(SELECT name,mark1,mark2,mark3 FROM student) LOOP
total_marks:=0;
DBMS_OUTPUT.PUT_LINE('Student name : '||student_rec.name);
DBMS_OUTPUT.PUT_LINE('Student marks 1: '||student_rec.mark1);
DBMS_OUTPUT.PUT_LINE('Student marks 2: '||student_rec.mark2);
DBMS_OUTPUT.PUT_LINE('Student marks 3: '||student_rec.mark3);
total_marks:= student_rec.mark1 + student_rec.mark2 + student_rec.mark3;
average_marks:=total_marks/3;
DBMS_OUTPUT.PUT_LINE('Average Mark : '||average_marks);
IF average_marks<40 THEN
DBMS_OUTPUT.PUT_LINE('Need Improvement');
ELSE
DBMS_OUTPUT.PUT_LINE('Need No Improvement');
END IF;
END LOOP;
SELECT to_char(sysdate,'Day') INTO class_day FROM dual;
DBMS_OUTPUT.PUT_LINE('Today is '|| to_char(sysdate,'DD-MM-YYYY')|| ', ' ||
class_day);
END;
/
OUTPUT
Student name : Micheal Scott
Student marks 1: 25
Student marks 2: 55
Student marks 3: 30
Average Mark : 36.66666666666666666666666666666666666667
Need Improvement
Student name : Dwight Schrute
Student marks 1: 80
Student marks 2: 0
Student marks 3: 40
Average Mark : 40
Need No Improvement
Student name : Jim Halpert
Student marks 1: 20
Student marks 2: 35
Student marks 3: 45
Average Mark : 33.3333
Need Improvement
Student name : Pam Beesly
Student marks 1: 80
Student marks 2: 90
Student marks 3: 70
Average Mark : 80
Need No Improvement
Student name : Kevin
Student marks 1: 5
Student marks 2: 55
Student marks 3: 39
Average Mark : 33
Need Improvement
Today is 20-10-2023, Friday
