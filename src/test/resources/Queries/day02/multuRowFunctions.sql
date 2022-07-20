select * from LOCATIONS;

/*

MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output

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