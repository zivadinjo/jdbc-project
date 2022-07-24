select * from EMPLOYEES;

--Display manger name of 'Neena'
select MANAGER_ID from EMPLOYEES
where FIRST_NAME='Neena';

select * from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
                   where FIRST_NAME='Neena');

select workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
from EMPLOYEES workers inner join EMPLOYEES managers
on workers.MANAGER_ID=managers.EMPLOYEE_ID;

--Show me Steven King(his id is null,he doesn't have manager,that's why we use left inner join
-- to see result from left side)
select workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
from EMPLOYEES workers left join EMPLOYEES managers
                                  on workers.MANAGER_ID=managers.EMPLOYEE_ID;