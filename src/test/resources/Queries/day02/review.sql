select  * from EMPLOYEES;

--  Display all infromation  where job title President ,Sales Manager, Finance manager
select * from JOBS
where JOB_TITLE = 'President' or JOB_TITLE = 'Sales Manager' or JOB_TITLE= 'Finance Manager';

select * from JOBS
where JOB_TITLE IN ('President','Sales Manager','Finance Manager');

-- Display all Department that does not have manager_id in departments table
select * from DEPARTMENTS
where MANAGER_ID is null ;

--  Display all Locations in US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID IN ('US','UK');

--  Display all Locations except US or UK from Locations table
select * from LOCATIONS
where COUNTRY_ID NOT IN ('US','UK');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium
select * from COUNTRIES
where REGION_ID = 1 and COUNTRY_NAME NOT IN 'Belgium';