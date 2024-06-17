create database constrain;

use constrain;

create table sqlcons
(
	roll_no int(9) not null unique,
    first_name varchar(30) not null,
    address varchar(30) not null,
    age int(9) not null check(age>=18),
    primary key(roll_no)
);

create table homework
(
	hm_id int(9) not null unique,
    task_name varchar(30) not null,
    roll_no int(9) not null ,
    foreign key (roll_no) references sqlcons(roll_no)
);

select *from sqlcons;
select *from homework;

insert into sqlcons values(75,'Shuv Sutradhar','Pune');
insert into homework values(1,'Reserach Paper','75');

