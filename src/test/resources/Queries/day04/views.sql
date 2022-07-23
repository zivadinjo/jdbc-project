select * from EMPLOYEES;

--Create virtual table named EmployeesInfo
create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials,
       FIRST_NAME||' makes '|| SALARY as Employees_salary  from EMPLOYEES;

--S.K. makes 24000
select * from EMPLOYEESINFO;

select Employees_salary from EMPLOYEESINFO;

--Deleting virtual table names EmployeesInfo
drop view EMPLOYEESINFO;