use Onbording;

select *from onbording order by salary;

insert into onbording values
('8','Aman','developer',35000000.00,'2025-09-09','IT',null),
('9','Arav','Assistant HR',5000000.00,'2025-09-06','HR',null);

select *from onbording order  by email;

select *from onbording where email is null;

select *from onbording where email is not null;

select department, avg(salary) as Avgsalary from onbording group by department;

select department, count(*) as Depwiseemp from onbording group by department;

SELECT department, COUNT(*) AS Highsalary FROM onbording  GROUP BY department having sum(salary) > 30000000.00;

select email, count(*) as emailcount from onbording where email is not null group by email;