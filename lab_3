EXPERIMENT NO:3 DEPARTMENT EMPLYOEE RELATIONS

AIM: Write queries to create and retrieve department and employee relations using relationship
constraints, indices, DDL & DML commands, views, built in functions, set operations, aggregate
functions, grouping and ordering clauses
--Department table creation
CREATE TABLE Department (
dep_no int primary key not null,
dep_name varchar(15) not null,
Loc varchar(15) not null,
mgr int not null,
exp_bdg int not null,
rev_bdg int not null
);
Name Null? Type
----------------------------------------- -------- ----------------------------
DEP_NO NOT NULL NUMBER(38)
DEP_NAME NOT NULL VARCHAR2(15)
LOC NOT NULL VARCHAR2(15)
MGR NOT NULL NUMBER(38)
EXP_BDG NOT NULL NUMBER(38)
REV_BDG NOT NULL NUMBER(38)
--Employee table creation
CREATE TABLE Employee(
empno int primary key not null,
name varchar(15) not null,
job varchar(15) not null,
salary int not null,
comm varchar(15),
dep_no int,
sex varchar(6),
foreign key (dep_no) references department(dep_no) on delete cascade
);
Name Null? Type
----------------------------------------- -------- ----------------------------
EMPNO NOT NULL NUMBER(38)
NAME NOT NULL VARCHAR2(15)
JOB NOT NULL VARCHAR2(15)
SALARY NOT NULL NUMBER(38)
COMM VARCHAR2(15)
DEP_NO NUMBER(38)
SEX VARCHAR2(6)
--Dependent table creation
CREATE TABLE Dependant(
pid int not null,
fname varchar(15) NOT NULL,
lname varchar(15) NOT NULL,
place varchar(15) not null,
empno int not null,
foreign key (empno) references employee(empno) on delete cascade
);
Name Null? Type
----------------------------------------- -------- ----------------------------
PID NOT NULL NUMBER(38)
FNAME NOT NULL VARCHAR2(15)
LNAME NOT NULL VARCHAR2(15)
PLACE NOT NULL VARCHAR2(15)
EMPNO NOT NULL NUMBER(38)
--Insert values into Department
INSERT INTO DEPARTMENT VALUES(60,'Shipping','Trivandrum',215,90000,0);
INSERT INTO DEPARTMENT VALUES(10,'Accounting','Cochin',200,100000,0);
INSERT INTO DEPARTMENT VALUES(30,'Research','Cochin',105,125000,0);
INSERT INTO DEPARTMENT VALUES(40,'Sales','Trichur',109,280000,8000);
INSERT INTO DEPARTMENT VALUES(50,'Manufacturing','Kottayam',210,130000,0);
select * from department;
DEP_NO DEP_NAME LOC MGR EXP_BDG REV_BDG
---------- --------------- --------------- ---------- ---------- ----------
60 Shipping Trivandrum 215 90000 0
10 Accounting Cochin 200 100000 0
30 Research Cochin 105 125000 0
40 Sales Trichur 109 280000 8000
50 Manufacturing Kottayam 210 130000 0
--Insert values into Employee
INSERT INTO Employee VALUES(100,'Wilson','CLRK',17000,NULL,10,'M');
INSERT INTO Employee VALUES(101, 'Smitha', 'SLSM', 25000,1300, 40, 'F');
INSERT INTO Employee VALUES (103, 'Roy', 'ANLST', 35000,NULL, 30, 'M');
INSERT INTO Employee VALUES (105, 'Watson', 'MNGR', 45000,0, 30, 'M');
INSERT INTO Employee VALUES (109, 'Alan', 'MNGR', 30000,8000, 40, 'M');
INSERT INTO Employee VALUES (110, 'Tina', 'CLRK', 18000,NULL, 50, 'F');
INSERT INTO Employee VALUES (200, 'Karthika', 'MNGR', 29000,NULL, 10, 'F');
INSERT INTO Employee VALUES (210, 'Rita', 'MNGR', 36500,NULL, 50, 'F');
INSERT INTO Employee VALUES (213, 'Manacy', 'CLRK', 16250,NULL, 10, 'F');
INSERT INTO Employee VALUES (214, 'Simpson', 'DRVR', 8250,NULL, 60, 'M');
INSERT INTO Employee VALUES (215, 'Deepa', 'ANLST', 27000,NULL, 60, 'F');
INSERT INTO Employee VALUES (220, 'Soosan', 'SLSM', 28500,5300, 60, 'F');
select * from employee;
+-------+----------+-------+--------+------+--------+
| Empno | Name | Job | Salary | Comm | Dep_No | Sex |
+-------+----------+-------+--------+------+--------+
| 100 | Wilson | CLRK | 17000 | NULL | 10 | M |
| 101 | Smitha | SLSM | 25000 | 3000 | 40 | F |
| 103 | Roy | ANLST | 35000 | NULl | 30 | M |
| 105 | Watson | MNGR | 45000 | 0 | 30 | M |
| 109 | Alan | MNGR | 30000 | 8000 | 40 | M |
| 110 | Tina | CLRK | 18000 | NULL | 50 | F |
| 200 | Karthika|MNGR | 29000 | NULL | 10 | F |
| 210 | Rita | MNGR | 36500 | NULL | 50 | F |
| 213 | Manacy | CLRK | 16250 | NULL | 10 | F |
| 214 | Simpson| DRVR | 8250 | NULL | 60 | M |
| 215 | Deepa | ANLST | 27000 | NULL | 60 | F |
| 220 | Soosan | SLSM | 28500 | 5300 | 60 | F |
+-------+----------+-------+--------+------+--------+
--Insert values into Dependent
INSERT INTO Dependant VALUES(1010, 'Anu', 'Jose', 'Trivandrum', 214);
INSERT INTO Dependant VALUES(1020, 'Neenu', 'Thomas', 'Kollam', 200);
INSERT INTO Dependant VALUES(1022, 'Anamika', 'Thampi', 'Kollam', 200);
INSERT INTO Dependant VALUES(1031, 'Swetha', 'Das', 'Kottayam', 109);
select * from dependant;
PID FNAME LNAME PLACE EMPNO
---------- --------------- --------------- --------------- ----------
1010 Anu Jose Trivandrum 214
1020 Neenu Thomas Kollam 200
1022 Anamika Thampi Kollam 200
1031 Swetha Das Kottayam 109
1 Return details of all managers from employee table sorted alphabetically by name
SELECT name FROM Employee where job='MNGR' order by name;
NAME
---------------
Alan
Karthika
Rita
Watson
2 Return details of all employees in department 40 ordered by empno
SELECT name FROM Employee where dep_no=40 order by empno;
NAME
---------------
Smitha
Alan
3 Return information about all female employee ordered by NAME.
select name from employee where sex='F';
NAME
---------------
Smitha
Tina
Karthika
Rita
Manacy
Deepa
Soosan
4. Find Minimum, Maximum and Average salary of employees in each department.
Select Dep_no, Min(Salary) as minimumSaslary, Max(Salary) as maximumSalary, AVG(Salary) as
averageSalary
from Employee group by dep_no;
DEP_NO MINIMUMSASLARY MAXIMUMSALARY AVERAGESALARY
---------- -------------- ------------- -------------
30 35000 45000 40000
40 25000 30000 27500
50 18000 36500 27250
10 16250 29000 20750
60 8250 28500 21250
5. Find Maximum and Minimum commission paid(COMM),total commission paid and count of
employees who were paid with commission.
Select Max(comm), Min(comm), sum(comm), count(comm)
from employee;
MAX(COMM) MIN(COMM) SUM(COMM) COUNT(COMM)
--------------- --------------- ---------- -----------
8000 0 14600 4
6. Number of employees listed in each job.
Select Job, count(job) as numberOfEmployees from employee group by job;
JOB NUMBEROFEMPLOYEES
--------------- -----------------
MNGR 4
SLSM 2
CLRK 3
ANLST 2
DRVR 1
7. Total salary paid to each job in the category.
Select job, sum(salary) as totalSalary from Employee group by job;
JOB TOTALSALARY
--------------- -----------
MNGR 140500
SLSM 53500
CLRK 51250
ANLST 62000
DRVR 8250
8. Return all DEPT_ÑOs in employee table(Ensure that each DEPT_ÑO appears only once).
Select distinct dep_no from employee;
DEP_NO
----------
30
40
50
10
60
9. Return EMPNO,NAME and SALARY of females in department 10.
SELECT empno, name, salary FROM Employee WHERE dep_no=10 and sex='F';
EMPNO NAME SALARY
---------- --------------- ----------
200 Karthika 29000
213 Manacy 16250
10. Return EMPNO, NAME and SALARY of all male managers ordered by NAME.
SELECT empno, name, salary FROM employee WHERE sex='M' and job='MNGR';
EMPNO NAME SALARY
---------- --------------- ----------
105 Watson 45000
109 Alan 30000
11. Return NAME and JOB of all female sales man and managers.
SELECT name, job FROM Employee where sex='F' and job in ('MNGR','SLSM');
NAME JOB
--------------- ---------------
Smitha SLSM
Karthika MNGR
Rita MNGR
Soosan SLSM
12. Display EMPNO and NAME of employees in employee table who are a either manager or a
clerk in department 50.
SELECT empno, name FROM Employee WHERE dep_no=50 and JOB in ('MNGR','CLRK');
EMPNO NAME
---------- ---------------
110 Tina
210 Rita
13. List the name of employee who are neither a clerk nor a salesman.
Select name from employee WHERE job not in ('CLRK','SLSM');
NAME
---------------
Roy
Watson
Alan
Karthika
Rita
Simpson
Deepa
14. Return details of all clerks working in departments other than department 10.
SELECT name FROM employee where dep_no <> 10 and job='CLRK';
NAME
---------------
Tina
15. Find names of employees containing letters U and E.
SELECT name FROM Employee where name like '%u%' and name like '%e%';
no rows selected
16. List all employee who earned commission.
SELECT name FROM Employee where comm is not null and comm <> 0;
NAME
---------------
Smitha
Alan
Soosan
17. Find EMPNO ,NAME and JOB of all females who are not managers.
SELECT empno, name, job FROM Employee where sex='F' and job<>'MNGR';
EMPNO NAME JOB
---------- --------------- ---------------
101 Smitha SLSM
110 Tina CLRK
213 Manacy CLRK
215 Deepa ANLST
220 Soosan SLSM
18.Find EMPNO,NAME and SALARY of all employees who earn more than 10000 but less than
40000.
SELECT empno, name, salary FROM Employee where salary >10000 and salary < 40000;
EMPNO NAME SALARY
---------- --------------- ----------
100 Wilson 17000
101 Smitha 25000
103 Roy 35000
109 Alan 30000
110 Tina 18000
200 Karthika 29000
210 Rita 36500
213 Manacy 16250
215 Deepa 27000
220 Soosan 28500
19.Use lN operator to find NAME and EMPNO of EMPLOYEE who are analyst or manager
ordered by NAME.
SELECT name, empno FROM Employee WHERE job in ('ANLST','MNGR') order by name;
NAME EMPNO
--------------- ----------
Alan 109
Deepa 215
Karthika 200
Rita 210
Roy 103
Watson 105
20.Find the employee number, name and salary who been paid commission and whose salary is
greater than 30000.
SELECT empno, name, salary FROM Employee WHERE comm >0 and salary>30000;
no rows selected
21.Find DEP-NO ,DEP-NAME, SALARY, JOB, SEX ordered by EMPNO within
department
SELECT d.dep_no, dep_name, salary, job, sex
FROM Department d, Employee e
WHERE d.dep_no=e.dep_no order by d.dep_no,empno;
DEP_NO DEP_NAME SALARY JOB SEX
---------- --------------- ---------- --------------- ------
10 Accounting 17000 CLRK M
10 Accounting 29000 MNGR F
10 Accounting 16250 CLRK F
30 Research 35000 ANLST M
30 Research 45000 MNGR M
40 Sales 25000 SLSM F
40 Sales 30000 MNGR M
50 Manufacturing 18000 CLRK F
50 Manufacturing 36500 MNGR F
60 Shipping 8250 DRVR M
60 Shipping 27000 ANLST F
60 Shipping 28500 SLSM F
22.Display the name of employee and dependant name if dependant is staying in the same location
where employee is working.
SELECT name as "EMPLOYEE NAME", fname as "DEPENDANT NAME"
FROM Employee E, Department D, Dependant P
WHERE e.dep_no=d.dep_no AND e.empno=p.empno AND d.loc=p.place;
EMPLOYEE NAME DEPENDANT NAME
--------------- ---------------
Simpson Anu
23.Find company location of employee named Watson.
SELECT loc as "CompanyLocation"
FROM employee e,department d
WHERE e.dep_no=d.dep_no and name='Watson';
CompanyLocation
---------------
Cochin
24.Find name, EMPNO,DEP-NAME for all employee who work in ‘Trichur’ and order by EMPNO
in descending order
SELECT name, empno, dep_name
FROM employee e, department d
WHERE loc='Trichur' and e.dep_no=d.dep_no
Order by empno desc;
NAME EMPNO DEP_NAME
--------------- ---------- ---------------
Alan 109 Sales
Smitha 101 Sales
25.Retrieve NAME and SALARY of all employee who earned more than average salary.
SELECT name, salary FROM Employee
WHERE salary > (Select avg(salary) from employee);
NAME SALARY
--------------- ----------
Roy 35000
Watson 45000
Alan 30000
Karthika 29000
Rita 36500
Deepa 27000
Soosan 28500
26.Find NAME, JOB, DEP NAME, LOCATION of all female employee order by
EMPNAME.
SELECT name, job, dep_name, loc
FROM employee e, department d
WHERE e.dep_no=d.dep_no and sex='F';
NAME JOB DEP_NAME LOC
--------------- --------------- --------------- ---------------
Smitha SLSM Sales Trichur
Tina CLRK Manufacturing Kottayam
Karthika MNGR Accounting Cochin
Rita MNGR ManufacturinG Kottayam
Manacy CLRK Accounting Cochin
Deepa ANLST Shipping Trivandrum
Soosan SLSM Shipping Trivandrum
27.Find the EMPNAME,DEP,NAME of all manager order by department name.
SELECT name as "Employee Name", DEP_NAME
FROM Employee e, Department d
WHERE job='MNGR' AND e.dep_no=d.dep_no
ORDER BY Dep_name;
Employee Name DEP_NAME
--------------- ---------------
Karthika Accounting
Rita Manufacturing
Watson Research
Alan Sales
28.Find NAME and DEP-NAME of employee who earns highest salary.
SELECT name,dep_name FROM Employee e join department d on e.dep_no=d.dep_no
Where Salary= ( SELECT Max(Salary) from employee );
NAME DEP_NAME
--------------- ---------------
Watson Research
29.Find name, department name, commission of all employee who paid commission order by name.
Select name, dep_name, comm
From employee e, department d
where e.dep_no=d.dep_no and comm>0
order by name;
NAME DEP_NAME COMM
--------------- --------------- ---------------
Alan Sales 8000
Smitha Sales 1300
Soosan Shipping 5300
30.Display employee name and department name of all employees working in departments that has
at least three employees. Order the output in alphabetical order first by department name and then
by employee name.
select name, dep_name
from employee e, department d
where e.dep_no=d.dep_no and e.dep_no in (
select dep_no from employee group by dep_no having count(dep_no)>2)
order by dep_name,name;
NAME DEP_NAME
--------------- ---------------
Karthika Accounting
Manacy Accounting
Wilson Accounting
Deepa Shipping
Simpson Shipping
Soosan Shipping
31.Find name, department name and commission of all employees who NOT paid
commission order by name.
(select name, dep_name, comm
from employee e, department d
where e.dep_no=d.dep_no and comm is null) union
(select name, dep_name, comm
from employee e, department d
where e.dep_no=d.dep_no and comm=0);
NAME DEP_NAME COMM
--------------- --------------- ---------------
Deepa Shipping
Karthika Accounting
Manacy Accounting
Rita Manufacturing
Roy Research
Simpson Shipping
Tina Manufacturing
Watson Research 0
Wilson Accounting
32.List name and salary of all employee in department number l0 and 30.
select name, salary
from employee
where dep_no in (10,30);
NAME SALARY
--------------- ----------
Wilson 17000
Roy 35000
Watson 45000
Karthika 29000
Manacy 16250
33.List jobs of employees in department 30 which are not done in department 40.
select job from employee where dep_no=30 and job not in(
select job from employee where dep_no=40);
JOB
---------------
ANLST
34.List out job and salary of employees in department l0 and 40 who draw the same salary
(result- no record found).
SELECT e1.name,e1.job, e2.name,e2.job
FROM Employee e1, employee e2
WHERE e1.dep_no=10 AND e2.dep_no=40 AND e1.salary=e2.salary;
no rows selected
35.Create a view to display EMPNO' NAME ' JOB of employee from employee table who works as
manager.
create view managerTable as
select empno, name, job
from employee
where job='MNGR';
select * from managerTable;
EMPNO NAME JOB
---------- --------------- ---------------
105 Watson MNGR
109 Alan MNGR
200 Karthika MNGR
210 Rita MNGR
36.Select EMPNO, NAME,JOB and SALARY of employee who works as clerk and having salary
greater than 1650.
select empno, name, job, salary from employee
where job='CLRK' and salary>1650;
EMPNO NAME JOB SALARY
---------- --------------- --------------- ----------
100 Wilson CLRK 17000
110 Tina CLRK 18000
213 Manacy CLRK 16250
37.Create an index for column FNAME and LNAME in Dependant table.
CREATE INDEX indx on Dependant (Fname,Lname);
Index created.
38.Delete person with ID=1031 in Dependant table.
delete from dependant where pid=1031;
1 row deleted.
PID FNAME LNAME PLACE EMPNO
---------- --------------- --------------- --------------- ----------
1010 Anu Jose Trivandrum 214
1020 Neenu Thomas Kollam 200
1022 Anamika Thampi Kollam 200
39.Return EMPNO,NAME and SALARY of any one of the females in department 10.
select empno, name, salary from (
select empno, name, salary from employee order by dbms_random.value)
where rownum=1;
EMPNO NAME SALARY
---------- --------------- ----------
210 Rita 36500
40.Delete the employee Karthika with all her dependants.
delete from dependant where empno in (
select empno from employee where name='Karthika');
2 rows deleted.
select * from dependant;
PID FNAME LNAME PLACE EMPNO
---------- --------------- --------------- --------------- ----------
1010 Anu Jose Trivandrum 214
delete from employee where name='Karthika';
1 row deleted.
select name from employee;
NAME
---------------
Wilson
Smitha
Roy
Watson
Alan
Tina
Rita
Manacy
Simpson
Deepa
Soosan
