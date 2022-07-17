select * from employees;

/*

 Shortcut to run --> CTRL+ENTER

 -- Keywords are case insensitive, but data is case sensitive

 */
 --Single lane comment with --

--display all columns from departments table
select * from DEPARTMENTS;

--display only first name from employees table
select  first_name from EMPLOYEES;

--display city names from locations table
select city from LOCATIONS;

--display firstname,lastname,salary from employees table
select first_name,LAST_NAME,SALARY from EMPLOYEES;

--display country name and region id  from countries table
select COUNTRY_NAME,REGION_ID from COUNTRIES;

--display job id and job title from jobs table
select JOB_ID,JOB_TITLE from JOBS;

--display street address and postal code from locations table
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;