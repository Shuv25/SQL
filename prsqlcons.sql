use constrain;

create table student
(
Roll_no int(10) not null unique,
Full_name varchar(99) not null,
Age int(10) not null,
Address varchar(99) not null,

primary key(Roll_no)
);
create table homeworks
(
Hm_id int(10) not null unique,
Task_name varchar(99) not null,
Roll_no int(10) not null,
foreign key(Roll_no) references student(Roll_no)
);

insert into student values('75','Kritartha','23','Indore');
insert into homeworks values('1','SQL','75');

select *from student;
select *from homeworks;