show databases;

create database prddl;

use prddl;

create table record
(
 roll_no int,
 first_name varchar(30),
 last_name varchar(30),
 age int,
 marks int
);

insert into record values('75','Shuv','Sutradhar','22','Samar Sutrdhar');

select *from record;

alter table record add fathers_name varchar(30),drop marks;

select *from record;

truncate table record;

drop table record;

