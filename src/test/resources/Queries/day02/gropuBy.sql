select * from EMPLOYEES;

--How many different job_id we have
select distinct JOB_ID FROM EMPLOYEES;

--Display average salary of 'IT_PROG'
select round(avg(SALARY)) from EMPLOYEES
where JOB_ID IN 'IT_PROG';

--Display average salary of 'SA_REP'
select avg(SALARY),min(SALARY),sum(SALARY),max(SALARY) from EMPLOYEES
where JOB_ID IN 'SA_REP';

--Display average salary of 'MK_MAN'
select round(avg(SALARY)) from EMPLOYEES
where JOB_ID IN 'MK_MAN';

--Instead of keep writing we are gone group them by,and we can not use * (all) sign,must be specified
select JOB_ID,avg(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID,avg(SALARY),max(SALARY),min(SALARY),sum(SALARY),count(*) from EMPLOYEES
group by JOB_ID;

--HINT!!--> When there is EACH keyword,it most usually means we need to use group by
--Get me sum(salary) each department of Employees
select DEPARTMENT_ID ,round(avg(SALARY)),count(*) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;