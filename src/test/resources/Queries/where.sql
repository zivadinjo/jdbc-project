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

--BETWEEN lower AND upper logic  --> boundaries are included it will give all matching result in range
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;