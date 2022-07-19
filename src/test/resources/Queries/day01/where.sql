/*

 we will use where keyword to filter requested result

 */

 --get me first name , last name, salary from employees where first name is david
select first_name,LAST_NAME,SALARY from employees
where FIRST_NAME='David';
--what ever is in '' it is case sensitive

--get me first name , last name, salary from employees where first name is David, last name Lee
select first_name,LAST_NAME,SALARY from employees
where FIRST_NAME='David' and LAST_NAME= 'Lee';

-- get me all information from employees who is making salary more from 6000
select * from EMPLOYEES
where SALARY >6000;

-- get me all information from employees who is making salary less than and equal 6000
select * from EMPLOYEES
where SALARY<= 6000;

-- get me email all information from employees who is making salary less than and equal 6000
select EMAIL from EMPLOYEES
where SALARY<= 6000;

-- get me first name and salary information from employees who is making salary more than 6000 and department id =80
select first_name,SALARY from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=80;

-- get me first name and salary information from employees who is making salary more than and equal 3000 and less than or equal 6000
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>=3000 and SALARY<=6000;

--BETWEEN lower AND upper logic--> uses and logic  --> boundaries are included it will give all matching result in range
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

--get all information from employees who is working as IT programmer and SA_REP
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

--IN CLAUSES--> uses or logic
--get all information from employees who is working as IT programmer and SA_REP
select * from EMPLOYEES
where JOB_ID IN ('IT_PROG','SA_REP','FI_MGR');

--get all information from employees who is not working as IT programmer and SA_REP
select * from EMPLOYEES
where JOB_ID NOT IN ('IT_PROG','SA_REP','FI_MGR');

--ger me all info where locations table where city is Rome,Tokyo
select * from LOCATIONS
where CITY IN ('Rome','Tokyo');

--get me all info from employees where id is equal 113,145,124,122
select * from EMPLOYEES
where EMPLOYEE_ID in(113,145,124,122);

--NULL and NOT NULL
select * from EMPLOYEES
where DEPARTMENT_ID is null;

select * from EMPLOYEES
where DEPARTMENT_ID is not null;