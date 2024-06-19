use Onbording;

select *from onbording;

select empname,salary,
case
	when salary >=5000000.00 and salary<30000000.00 then 'Low'
    when salary >=30000000.00 and salary<=40000000.00 then 'Med'
    when salary >=40000000.00 and salary<=60000000.00 then 'High'
    else 'Super High'
End as Salaryrange
from onbording;

select empname,salary,jobtitle,
case jobtitle
	when 'Quant Researcher' then salary*0.3
    when 'Accuntent' then salary*0.3
    else salary*0.7
End as Bonus
from onbording;

select empname, datediff(joiningdate,curdate()) as Daywithcompnay,
case 
	when datediff(joiningdate,curdate())>365 then 'gem'
    else 'rookie'
End as Experience
from onbording;