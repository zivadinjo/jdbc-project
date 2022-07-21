
-- Display job_id where average salary is more than 5K
select JOB_ID,avg(SALARY),count(*) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

--Get me department_id where employees count bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5;

--IQ -->  display duplicate first_names from employees table
select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;