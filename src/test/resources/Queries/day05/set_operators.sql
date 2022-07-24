select * from EMPLOYEES;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select *  from developers;
select * from TESTERS;


/*
 UNION
 - To merge more than table vertically
 - Removes DUPs
 - Make an order asc

 */
-- it checks all rows to find same row.if we have it will remove one of them
select  * from DEVELOPERS
UNION
select * from TESTERS;


select names from DEVELOPERS
UNION
select names from TESTERS;

/*
 UNION ALL
 - DONT Remove DUPs
 - DONT sort results
 combines,does not remove duplicates,does not sort

 */

select  * from DEVELOPERS
UNION ALL
select * from TESTERS;


select names from DEVELOPERS
UNION ALL
select names from TESTERS;

/*

MINUS
show record from query1 that are not present in query2

 */

select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

/*

 INTERSECT
 copy and remove the duplicates,show common records from 2 queries

 */

select NAMES from DEVELOPERS
INTERSECT
select NAMES from TESTERS