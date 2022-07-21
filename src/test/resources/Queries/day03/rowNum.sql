
-- Display only 10 rows from employees
select * from EMPLOYEES
where ROWNUM <11;  --ROWNUM works only with < or <=

--Display all the info who is getting first 5 highest salary

--BAD PRACTICE--WRONG!!!
select * from EMPLOYEES
where ROWNUM < 6
order by SALARY desc ;

--CORRECT
select * from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 6;

--Dis[lay all info fro employees who is getting 5th highest salary
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 6;

--Dis[lay all info fro employees who is getting 15th highest salary
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 16;

--Dis[lay all info fro employees who is getting 213th highest salary
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 214;

--Display all info who is making 5th highest salary
select * from EMPLOYEES
where SALARY=(select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 6);
