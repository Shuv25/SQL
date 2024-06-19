use Onbording;

select *from onbording;

select *from onbording order by joiningdate;

select *from onbording order by joiningdate desc;

select empname,joiningdate,department from onbording order by joiningdate asc, department desc;

insert into onbording values('7','Vishal','Accuntent',55000000.00,'2025-07-09','Acounts','vishalnagar@gmail.com');

select department, count(*) as Employeecount from onbording group by department;

select department, count(*) as Employeecount from onbording group by department having count(*) > 1;
