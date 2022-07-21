select * from EMPLOYEES;

/*
 SUBQUERY

 -Query inside Query
 -Inner query runs first

 */

 --Display all information from employees who is making highest salary in company
select max(SALARY) from EMPLOYEES; -- 24K

select * from EMPLOYEES
where SALARY=24000; -- HARDCODED!! What if salary changes

--make it dynamic
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

--Display all information from employees who is making second highest salary in company
select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);
    -- find all information abut second highest salary
select * from EMPLOYEES
where SALARY =(select max(SALARY) from EMPLOYEES
                where SALARY <(select max(SALARY) from EMPLOYEES));

--Display all employees who is getting more than avg salary
select * from EMPLOYEES
where SALARY > (select round (avg(SALARY)) from EMPLOYEES)
order by SALARY asc ;
