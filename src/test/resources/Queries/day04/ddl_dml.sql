select * from SCRUMTEAM;

--CREATE TABLE

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

CREATE TABLE scrumteam(

  employee_id INTEGER PRIMARY KEY , --Not null and unique
  firstname varchar(30) not null, --can not be null
  job_title varchar(20) not null,
  age INTEGER,                    --there is no constrains
  salary INTEGER
);

/*

 INSERT
INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );

 */

 INSERT INTO SCRUMTEAM(employee_id, firstname, job_title, age, salary)
 VALUES(1,'Mike','Tester',25,120000);

INSERT INTO SCRUMTEAM(employee_id, firstname, job_title, age, salary)
VALUES(2,'John','Tester',27,130000);

INSERT INTO SCRUMTEAM(employee_id, firstname, job_title)
VALUES(3,'Dembe','Developer');


INSERT INTO SCRUMTEAM
VALUES(4,'Henry','SM',30,150000);

select * from SCRUMTEAM;

/*

 UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;

 */

 --Increase all employees salary
UPDATE SCRUMTEAM
SET salary= salary+5000;

--Increase tester salary
UPDATE SCRUMTEAM
SET salary= salary+5000
where job_title='Tester';

select * from SCRUMTEAM;

--Add age for Dembe
UPDATE scrumteam
SET AGE=34,salary=160000
WHERE firstname='Dembe';

--Delete
DELETE from scrumteam
where firstname='Dembe';

commit ;

/*

 ALTER
 we will use this key word to update table structure

 */

 --ADD NEW COLUMN
ALTER TABLE scrumteam
ADD gender varchar(20);

--Update all scrumteam gender as Male
UPDATE scrumteam
SET GENDER='Male';

--RENAME COLUMN
ALTER TABLE scrumteam
rename COLUMN SALARY to annual_salary;

--DROP COLUMN--> Delete from table
ALTER TABLE scrumteam
DROP COLUMN gender;

--RENAME TABLE
ALTER TABLE scrumteam
RENAME TO AGILETEAM;

select * from AGILETEAM;--> scrumteam changed to agileteam

--TRUNCATE
TRUNCATE TABLE AGILETEAM;

--DROP
DROP TABLE AGILETEAM;

--IQ--  WHAT IS THE DIFFERENCE BETWEEN DROP AND TRUNCATE
   --TRUNCATE will delete all table content/data but not table
   --DROP will delete table it self including data

commit ; -- to save all changes to table

--view--> does not exist in data base with data. It is just virtual table to reuse query
--Table-->  exist in database with their data