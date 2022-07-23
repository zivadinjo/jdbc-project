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
 from CUSTOMER C right outer join ADDRESS A
 there is not difference between left outer join and left join

 */

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
                           on C.ADDRESS_ID = A.ADDRESS_ID;

/*

 RIGHT OUTER JOIN
 Matching part and also unique part for right table
 from CUSTOMER C(left table) right outer join ADDRESS A(right table)
 and also we can switch places for customer A and address A,after from and also
 switch on part C address_id and A address_id
 there is not any difference between right outer join and right join

 */

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right outer join ADDRESS A
                                on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A LEFT JOIN CUSTOMER C
                         ON A.ADDRESS_ID=C.ADDRESS_ID;

/*

 FULL OUTER JOIN

 */

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A FULL JOIN CUSTOMER C
                         ON A.ADDRESS_ID=C.ADDRESS_ID;