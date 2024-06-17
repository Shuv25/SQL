use DDL;

create table student
(
	roll_no int,
    first_name varchar(30),
    last_name varchar(30),
    age int,
    mars int
);

insert into student values('75','Sourav','Sutradhar','22','95');

show databases;

drop database first;

drop table student;

create table student
(
	roll_no int,
    first_name varchar(30),
    last_name varchar(30),
    age int,
    mars int
);

insert into student values('75','Sourav','Sutradhar','22','samar','sagarika');

alter table student add mothers_name varchar(30), drop mars;

select * from student;

truncate table student;

rename table student to studnet_details;


