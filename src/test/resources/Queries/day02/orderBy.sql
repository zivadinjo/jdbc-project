select * from EMPLOYEES;

/*
 ORDER BY

 -It allows to sort your data based on provided column/index
 -As a DEFAULT it orders ASC(a-z or 0-9)
 -IF you want to order them in to DESC , we need to specify after column/index


 */

 --get me all info from employees from low salary to high
select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by SALARY asc;

--get me all info from employees from high salary to low
select * from EMPLOYEES
order by SALARY desc ;

-- How we can use index to sort data?
select * from EMPLOYEES
order by 8 ; -- 8 is index number of column where the salary is located,and because there is select * from --> which
--give us access to all tables , we can put index number for desired table,and by default order is ascending

select EMAIL,FIRST_NAME from EMPLOYEES
order by 2; -- given that ve have 2 parameters email, and first_name we have 2 columns,and number 2 means it will order
--result by index column number,in this case number 2 is FIRST_NAME,if there is number 1 it will be sorted by EMAIL

--get me all info where employee_id <120,and order them alphabetically
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by FIRST_NAME asc;

--get me all info from employees based firstname asc and last name dsc
select * from EMPLOYEES
order by FIRST_NAME asc,LAST_NAME desc ;