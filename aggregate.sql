create database Onbording;

use Onbording;

create table onbording
(
	employeeid int(9),
    empname varchar(50) ,
    jobtitle varchar(50),
    salary decimal(10,2),
    joiningdate date,
    department varchar(50),
    email varchar(50)
);

insert into onbording(employeeid,empname,jobtitle,salary,joiningdate,department,email) values
('3','Suman','Quant Researcher',70000000.00,'2025-07-03','Finance','sumanroy@gmail.com'),
('4','Rohan','AI Engineer',5000000.00,'2024-07-03','IT','rohankumar@gmail.com'),
('5','Rohit','Assistant marketing maneger',30000000.00,'2024-05-03','marketing','rohitsaraf@gmail.com'),
('6','Arpit','Accuntent',60000000.00,'2025-07-04','Acounts','arpitbaliyan@gmail.com');

select *from onbording;

select count(*) as totalemployeejoined from onbording where year(joiningdate)='2025';

select avg(salary) as Avgsalary from onbording;

select avg(salary) as Avgsalaryin2025 from onbording where year(joiningdate)='2025';


