create database cartesian;

use cartesian;

create table customerA
(
	id int,
    name varchar(99),
    city varchar(99)
);

create table customerB
(
	id int,
    name varchar(99),
    city varchar(99)
);

insert into customerA values
(3,'john','michigen'),
(4,'ryan','ohio'),
(5,'george','newyork'),
(6,'alex','san-francisco');

insert into customerB values
(3,'john','michigen'),
(4,'sophie','london'),
(5,'regner','toronto'),
(6,'george','newyork');

truncate table customerA;
truncate table customerB;

select name,city from customerA union select name,city from customerB;-- will removte the duplicates
select name,city from customerA union all select name,city from customerB;-- will return all records