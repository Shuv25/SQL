use Onbording;

select empname,year(joiningdate) as Joiningyear,month(joiningdate) as Joiningmonth from onbording;

select empname, date_format(joiningdate,'%d/%m/%y') as FormatedJoiningdate from onbording;

select empname, date_format(joiningdate,'%d/%m/%y') as FormatedJoiningdate from onbording order by FormatedJoiningdate desc; 

select empname, datediff(joiningdate,curdate()) as Daywithcompnay from onbording where datediff(joiningdate,curdate())>365;

