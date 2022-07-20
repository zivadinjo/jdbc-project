select * from LOCATIONS;

/*

MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output

All aggregate functions does not count null values

 */
--Gives you all different departments in this case departments --> count() returns number of given table,row,name,etc..
 select count(*) from DEPARTMENTS;

--How many different first names we have?
select distinct FIRST_NAME from EMPLOYEES;
select count(distinct FIRST_NAME) from EMPLOYEES;

--How many employees we have work as 'IT_PROG' or 'SA_REP'
select count(*) from EMPLOYEES
where JOB_ID IN ('IT_PROG','SA_REP');
--If you want to count your result,use count(*) to get correct answer

--How many employees we have ase department_id is null
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

--MAX
--Get me max salary from employees
select max(SALARY) from EMPLOYEES;

--MIN
--Get me min salary from employees
select min(SALARY) from EMPLOYEES;

--SUM
--Get me total salary of employees
select sum(SALARY) from EMPLOYEES;

--AVG
--Get me average salary from employees
select avg(SALARY) from EMPLOYEES;

--ROUND --> It is not aggregate function.It is numeric function
select round(avg(SALARY)) from EMPLOYEES;

select round(avg(SALARY),1) from EMPLOYEES; -- One decimal is added with number 1,two with number 2, etc