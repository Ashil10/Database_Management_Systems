 
EXPERIMENT NO: 13

EMPLOYE DATABASE USING PACKAGE

Aim: Write pl/sql program to implement employee database using package for information retrievel


Table Creation 

Create table employ ( eid int not null primary key ,ename varchar(15) not null , eaddress varchar      (15) not null , esalary  int not null);


SQL> desc employ;

 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EID					   NOT NULL NUMBER(38)
 ENAME				   NOT NULL VARCHAR2(15)
 EADDRESS				   NOT NULL VARCHAR2(15)
 ESALARY				   NOT NULL NUMBER(38)

 select * from employ;

       	EID ENAME	   EADDRESS	ESALARY
	---------- --------------- --------------- 	----------
	 1 Krithi	   chennai		39000
	 2 Nidhi	   Mumbai		55000
	 3 Vithi	   Pune 		46000


PROGRAM

a)
      CREATE OR REPLACE PACKAGE EmployeePackage AS
    -- Procedure to add an employee
    PROCEDURE AddEmployee(
        p_Eid employ.EID%type,
        p_Ename employ.ENAME%type,
        p_Eaddress employ.EADDRESS%type,
        p_Esalar employ.ESALARY%type
    );

    -- Procedure to delete an employee
    PROCEDURE DeleteEmployee(p_Eid INT);

    -- Procedure to list all employees
    PROCEDURE ListAllEmployees;

    -- Function to get the salary of an employee by ID
    FUNCTION GetSalary(x in NUMBER) RETURN NUMBER;
END EmployeePackage;
/


b)

CREATE OR REPLACE PACKAGE BODY EmployeePackage AS
   
    -- Procedure to add an employee
    PROCEDURE AddEmployee(
        p_Eid employ.EID%type,
        p_Ename employ.ENAME%type,
        p_Eaddress employ.EADDRESS%type,
        p_Esalar employ.ESALARY%type
    ) IS
    BEGIN
        INSERT INTO employ(EID,ENAME,EADDRESS,ESALARY) values (p_Eid, p_Ename, p_Eaddress,p_Esalar);
        DBMS_OUTPUT.PUT_LINE('Employee added successfully: ');
    END AddEmployee;

    -- Procedure to delete an employee
    PROCEDURE DeleteEmployee(p_Eid INT) IS
    BEGIN
        DELETE FROM employ where EID=p_Eid;
    END DeleteEmployee;

    -- Procedure to list all employees
    PROCEDURE ListAllEmployees IS
       CURSOR e_emp IS SELECT ENAME from employ;
       TYPE e_list IS TABLE OF employ.ENAME%type;
       name_list e_list :=e_list();
       counter integer :=0;
       BEGIN
       	 FOR n IN e_emp LOOP
       	 	counter:=counter+1;
       	 	name_list.extend;
       	 	name_list(counter):=n.ename;
       	 	dbms_output.put_line('Employee('||counter||')='||name_list(counter));
       	 	END LOOP;
       	 	END ListAllEmployees;
       	 	

    -- Function to get the salary of an employee by ID
    FUNCTION GetSalary(x in number) RETURN NUMBER IS
    sal number(5):=0;
    BEGIN
       SELECT ESALARY INTO sal FROM  where EID=x;
       dbms_output.put_line(sal);
       RETURN sal;     
    END GetSalary;
END EmployeePackage;
/


c)


set serveroutput on
accept x number prompt 'Enter Employee ID of whose salary you want to display.'
DECLARE
	code employ.EID%type;
	salary employ.ESALARY%type;
BEGIN
    -- Add employees
   EmployeePackage.AddEmployee(4, 'Karthika', 'jew Street', 56000);

    -- List all employees
    EmployeePackage.ListAllEmployees;

    -- Get the salary of an employee
    code:=&x;
    DBMS_OUTPUT.PUT_LINE('Salary of employee with ID '||code|| ': ' || EmployeePackage.GetSalary(code));

    -- Delete an employee
    EmployeePackage.DeleteEmployee(2);

    -- List all employees after deletion
    EmployeePackage.ListAllEmployees;
    
END;
/



   OUTPUT

SQL> set serveroutput on;
SQL> @lab13a.sql

Package created.

SQL> @lab13b.sql 

Package body created.

SQL> @lab13c.sql
Enter Employee ID of whose salary you want to display.1
old  12:     code:=&x;
new  12:     code:=	    1;
Employee added successfully:
Employee(1)=Krithi
Employee(2)=Nidhi
Employee(3)=Vithi
Employee(4)=Karthika
39000
Salary of employee with ID 1: 39000
Employee(1)=Krithi
Employee(2)=Vithi
Employee(3)=Karthika

PL/SQL procedure successfully completed.

SQL> select * from employ;

   	  EID 		ENAME	   EADDRESS	 ESALARY
	---------- --------------- 		--------------- 		----------
	 1 		Krithi	   	chennai		39000
	 3 		Vithi	   	Pune 			46000
	 4 		Karthika	jew Street		56000

