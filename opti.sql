use datapreprocessing;

-- slow query
select * from salesdata
where year(date)=2023;

-- fast query
create index idx_date on salesdata(date);

Select date, Sum(sales_amount) as TotalSa1es
from salesdata
where date between '2023-01-01' and '2023-01-31'
group by date;
