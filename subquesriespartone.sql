create database subsqueries;

use subsqueries;

create table employee
(
	empid int primary key,
    empname varchar(99),
    depid int,
    salary decimal(9,3)
);

truncate table employee;

insert into employee values
(3,'amy',5,4500.456),
(4,'john',6,9500.456),
(5,'keny',5,8500.456),
(6,'maddy',7,5500.456);

create table department
(
	depid int primary key,
    depname varchar(99)
);

insert into department values
(5,'account'),
(6,'it'),
(7,'finance');

select empid,empname,salary from employee where depid=(select depid from department where depname='account');

select empid,empname,salary from employee where depid=(select depid from department where depname='finance');

select depname,(select avg(salary) from employee where employee.depid=department.depid) from department;
