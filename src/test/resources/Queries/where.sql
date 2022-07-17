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

