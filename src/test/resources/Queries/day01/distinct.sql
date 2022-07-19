/*

 DISTINCT

 removes duplicate from your request. Original ones still into database

 */

--display only first name from employees table
select  first_name from EMPLOYEES;

--get me all unique first names from employees
select distinct first_name from employees;

--get me unique job id from employees table
select distinct JOB_ID from EMPLOYEES;

--get me unique country id from locations
select distinct COUNTRY_ID from LOCATIONS;