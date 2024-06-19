create database joins;

use joins;

create table customer
(
	id int(9),
    name varchar(99),
    email varchar(99),
    
    primary key(id)
);

create table orders
(
	orderid int(9),
    id int(9),
    amount decimal(10,2)
);

insert into customer values
(3,'Shuv','shuvsutradhar@gmail.com'),
(4,'Suman','sumanroy@gmail.com'),
(5,'Ronit','ronitraj@gmail.com'),
(6,'Akaksh','akashsharma@gmail.com');

insert into orders values
(33,3,55.60),
(34,4,75.69),
(35,5,35.70),
(36,6,95.88);

select *from customer;
select *from orders;

alter table orders add primary key(orderid);

-- left join
select customer.id,customer.name,customer.email,orders.orderid,orders.amount from customer
left join orders on customer.id=orders.id;

-- right join
select orders.orderid,orders.amount,customer.id,customer.name from orders
right join customer on orders.id=customer.id;

-- inner join
select orders.orderid,customer.name from orders inner join customer on orders.id=customer.id;

-- full join
select *from(
SELECT customer.id, customer.name, customer.email, orders.orderid, orders.amount 
FROM customer 
LEFT JOIN orders ON customer.id = orders.id
UNION
SELECT customer.id, customer.name, customer.email, orders.orderid, orders.amount 
FROM customer 
RIGHT JOIN orders ON customer.id = orders.id
) as combined_res order by name;