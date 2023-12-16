EXPERIMENT NO.11
TRIGGER STUDENT REPORT

CREATE TABLE marks(
sid int primary key,
name varchar(12) not null,
subj1 float not null,
subj2 float not null,
subj3 float not null,
total float,
average float
);
SQL> desc marks
Name Null? Type
----------------------------------------- -------- ----------------------------
SID NOT NULL NUMBER(38)
NAME NOT NULL VARCHAR2(12)
SUBJ1 NOT NULL FLOAT(126)
SUBJ2 NOT NULL FLOAT(126)
SUBJ3 NOT NULL FLOAT(126)
TOTAL FLOAT(126)
AVERAGE FLOAT(126)
PL/SQL CODE
CREATE OR REPLACE TRIGGER mark_trig
BEFORE
INSERT OR
DELETE ON marks FOR EACH ROW
BEGIN
UPDATE marks set marks.total=marks.subj1 + marks.subj2 + marks.subj3;
UPDATE marks set marks.average= marks.total / 3;
END;
/
INSERTING VALUES
INSERT INTO marks VALUES(1,'Ghost',63,57,71,null,null);
SID NAME SUBJ1 SUBJ2 SUBJ3 TOTAL AVERAGE
---------- ------------ ---------- ---------- ---------- ---------- ----------
1 Ghost 63 57 71
INSERT INTO marks VALUES(2,'Soap',63,75,75,null,null);
SID NAME SUBJ1 SUBJ2 SUBJ3 TOTAL AVERAGE
---------- ------------ ---------- ---------- ---------- ---------- ----------
1 Ghost 63 57 71 191 63.6666667
2 Soap 63 75 75
INSERT INTO marks VALUES(5,'Price',99,99,99,null,null);
SID NAME SUBJ1 SUBJ2 SUBJ3 TOTAL AVERAGE
---------- ------------ ---------- ---------- ---------- ---------- ----------
1 Ghost 63 57 71 191 63.6666667
2 Soap 63 75 75 213 71
3 Price 99 99 99
SQL> select * from marks;
SID NAME SUBJ1 SUBJ2 SUBJ3 TOTAL AVERAGE
---------- ------------ ---------- ---------- ---------- ---------- ----------
1 Ghost 63 57 71 191 63.6666667
2 Soap 63 75 75 213 71
3 Price 99 99 99 297 99
