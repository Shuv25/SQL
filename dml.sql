create database dml;
use dml;
create table mylog
(
	Id int(90) not null unique,
    Full_name varchar(99) not null,
    logintimes int(6)
);

insert into mylog values('5','Karan','3');

select *from mylog;

insert into mylog values('6','Arav','6');

insert into mylog values('7','Suman','4');

update mylog set Full_name='John' where Id=5; 

delete from mylog where Id=7;

