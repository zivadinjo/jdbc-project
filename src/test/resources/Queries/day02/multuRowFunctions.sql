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

 select count(*) from DEPARTMENTS;

--How many different first names we have?
select distinct FIRST_NAME from EMPLOYEES;