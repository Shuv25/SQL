create database college;

use college;

create table student(
id int primary key,
name varchar(50),
age int not null);

insert into student
(id,name,age) 
values
(1, 'John Doe', 20),
(2, 'Alice Smith', 22),
(3, 'Bob Johnson', 21),
(4, 'Carol Lee', 23),
(5, 'David Brown', 19);

select * from student;

show tables;

create table teachers(
id int primary key,
name varchar(50),
salary float not null);

select * from teachers;

insert into teachers
(id,name,salary) 
values
(1, 'John Smith', 50000.00),
(2, 'Alice Johnson', 55000.00),
(3, 'Robert Brown', 60000.00),
(4, 'Emily Davis', 52000.00),
(5, 'Michael Wilson', 58000.00);

show tables;

create table subjects(
subid int primary key,
subname varchar(50),
tid int,
foreign key(tid) references teachers(id)
);

insert into subjects
(subid,subname,tid)
values
(101,'C++',3),
(102,'Python',5),
(103,'Java',2),
(104,'PHP',4),
(105,'JavaScript',1);

show tables;

select * from subjects;

select id,name from student;

select * from student;

alter table student
add marks float,
add ciy varchar(50);

alter table student
drop column marks;

alter table student
add grade varchar(5);

update student
set grade='A', ciy='Kanpur'
where id=1;

update student
set grade='A', city='Delhi'
where id=2;

update student
set grade='B', city='Faridabad'
where id=3;

update student
set grade='B', city='Noida'
where id=4;

update student
set grade='A', city='Lakhnow'
where id=5;

alter table student
rename column ciy to city;

select *from student;

select * from subjects; 

alter table student
add column sub varchar(50);

update student
set sub='C++'
where id =1;

update student
set sub='Python'
where id =2;

update student
set sub='Java'
where id =3;

update student
set sub='Python'
where id =4;

update student
set sub='C++'
where id =5;

select * from student where grade='A';
select * from student where sub='C++';

select * from student
where age>20 and sub='Python';

select distinct grade from student;

select * from student
where grade='A' or age> 20;

select * from student
where age between 20 and 22;

select * from student
where city in ('delhi','Lakhnow');

select * from student
where city not in ('delhi','Lakhnow');

select * from student limit 3;

select * from student where age>20 limit 3;

select * from student order by age desc;

select * from student order by city asc;

select * from student order by grade asc;

select * from student;

alter table student
add column percentage float;

update student
set percentage=90.56 
where id =1;

update student
set percentage=88.96 
where id =2;

update student
set percentage=78.56 
where id =3;

update student
set percentage=77.96 
where id =4;

update student
set percentage=93.33 
where id =5;

select count(percentage) from student;

select max(percentage) from student;

select min(percentage) from student;

select avg(percentage) from student;

select sum(percentage) from student;

select * from student  where percentage> (select avg(percentage) from student) order by percentage desc;

select sub, count(id)
from student
group by sub;

select sub, sum(percentage)
from student
group by sub;

select *from student;

select sub,avg(age)
from student 
group by sub 
order by sub asc;

create table payment(
cusid int primary key,
cusname varchar(50),
paymode varchar(50),
city varchar(50));

select *from payment;

insert into payment(cusid,cusname,paymode,city) values
(1, 'Alice', 'debit', 'New York'),
(2, 'Bob', 'credit', 'Los Angeles'),
(3, 'Charlie', 'netbanking', 'Chicago'),
(4, 'David', 'debit', 'New York'),
(5, 'Eva', 'credit', 'San Francisco'),
(6, 'Frank', 'netbanking', 'Los Angeles'),
(7, 'Grace', 'debit', 'Chicago'),
(8, 'Hank', 'credit', 'New York'),
(9, 'Ivy', 'netbanking', 'San Francisco'),
(10, 'Jake', 'credit', 'Los Angeles');

select paymode,count(cusid)
from payment
group by paymode
order by paymode desc;

select *from student;

select sub,count(id)
from student
group by sub
having max(percentage)> 85;

select sub,count(id)
from student
where grade='A' 
group by sub
having max(percentage) > avg(percentage);

select * from teachers;

select * from subjects;

alter table student
rename column name to full_name;

select * from student;

delete from student
where percentage < 80;

alter table student
drop column grade;

create table emp(
id int primary key,
name varchar(50));

insert into emp (id,name) 
values
(1,'Alan'),
(2,'Bob'),
(3,'Derek'),
(4,'Marsh'),
(5,'Harry');

create table salary(
id int primary key,
sal float);

insert into salary(id,sal)
values
(1,65000),
(7,5000),
(2,75000),
(4,55000);

select * from emp inner join salary on emp.id=salary.id; -- inner join
select * from emp left join salary on emp.id=salary.id; -- left join
select * from emp right join salary on emp.id=salary.id; -- right join
#Full Outer Join
select * from emp as e
left join salary as s
on e.id=s.id
union
select *from emp as e
right join salary as s
on e.id=s.id;

#exclusive left join
select * from emp as e
left join salary as s
on e.id=s.id
where s.id is null;

#exclusive right join
select *from emp as e
right join salary as s
on e.id=s.id
where e.id is null;

#full exclusive join
select * from emp as e
left join salary as s
on e.id=s.id
where s.id is null
union
select *from emp as e
right join salary as s
on e.id=s.id
where e.id is null;

#self join
create table manager(
id int primary key,
name varchar(50),
maneid int);

insert into manager(id, name,maneid) values
(1,'Adam',3),
(2,'Monica',4),
(3,'Sam',null),
(4,'Ron',3);

select * from manager;

select a.name as manegername ,b.name as empname from manager as a
join manager as b
on a.id=b.maneid;

select * from student;

insert into student(id,full_name,age,city,sub, percentage)
values
(3,'Derek Jhonson',22,'Pune','Python',85.89),
(4,'Sam Curan',21,'Bhopal','Java',75.89);

select avg(percentage) from student;

select * from student
where
percentage > (select avg(percentage) from student);

select full_name,age from student
where
age % 2=0;

select * from student;

select * 
from student 
where sub='C++' 
and 
percentage = (select max(percentage) from student);

select max(percentage) 
from 
(select * from student
where sub='C++') as temp;

select * from student;

create view tview as
select id,full_name,sub from student;

select * from tview
where sub='C++';

drop view tview;

-- windows functions

select * from student;

select * from
student
where 
percentage=(select max(percentage) from student);

select sub,max(percentage) as max_per
from student
group by sub;

select *,
max(percentage) over(partition by sub) as max_per
from student;

select *,
sum(percentage) over(partition by sub) as sum_per
from student;

select *,
row_number() over(partition by sub) as row_num
from student;

select *,
row_number() over(partition by sub order by id) as row_num
from student;

select * from
(select *,
row_number() over(partition by sub order by id) as row_num
from student) x
where x.row_num=1;

select *,
rank() over(partition by sub order by percentage desc) as rnk
from student;

select *,
dense_rank() over(partition by sub order by percentage desc) as dnse_rnk
from student;

select *,
lag(percentage) over(partition by sub order by id) as prev_stu_perc
from student;

select *,
lead(percentage) over(partition by sub order by id) as next_stu_perc
from student;

select *,
lead(percentage,1,0) over(partition by sub order by id) as next_stu_perc
from student;




