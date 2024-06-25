use cartesian;

create table customer
(
	id int primary key,
    name varchar(99),
    city varchar(99)
);

create table orderA
(
	orderid int primary key,
    id int,
    amount decimal(10,2)
);

insert into customer values
(3,'john','newyork'),
(4,'levi','tokyo'),
(5,'eren','shibuya');

insert into orderA values
(55,3,78.90),
(56,4,83.45),
(57,7,45.50);

truncate table orderA;

select orderid,amount from orderA o where exists( select 3 from customer c where o.id =c.id);-- semi join
select orderid,amount from orderA o where not exists( select 3 from customer c where o.id =c.id); -- anti join