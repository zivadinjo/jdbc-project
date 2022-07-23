select * from EMPLOYEES;

/*

 INNER JOIN it gives only matching portion of the tables

 */

select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Aliases
--Instead using full name of table added letters as nick name which must be used when added
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

/*

 LEFT OUTER JOIN

 Matching part and also unique parts for left table

 */

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
                           on C.ADDRESS_ID = A.ADDRESS_ID;