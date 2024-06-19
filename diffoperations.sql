create database operations;

use operations;

create table op
(
	id int(9) not null unique,
    name varchar(30) not null,
    salary decimal(10,2) not null,
    address varchar(30) not null
);

insert into op(id,name,salary,address) values
('3','shuv','5000000.00','pune'),
('4','raghav','3500000.00','pune'),
('5','kamal','4500000.00','pune'),
('6','suresh','3300000.00','pune'),
('7','amal','4400000.00','pune');

select *from op limit 3;

select o.name from op as o;

select id from op;

select id,name,salary from op;

select distinct salary from op;

select distinct  *from op;

select count(*) from op;

select * from op where salary>4000000.00;

select *from op where salary between 4000000.00 and 4800000.00;

select *from op where name like 's%';-- name starts with s

select *from op where name like '%h';-- name ends with h

select *from op where name not like 's%';-- name not starts with s

select *from op where salary>4000000.00 and id='5';
