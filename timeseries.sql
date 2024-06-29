use datapreprocessing;

CREATE TABLE salesdata (
    date DATE,
    sales_amount DECIMAL(10, 2)
);

INSERT INTO salesdata (date, sales_amount) VALUES 
('2023-01-01', 1500.00),
('2023-01-02', 1600.00),
('2023-01-03', 1700.00),
('2023-01-04', 1400.00),
('2023-01-05', 1300.00),
('2023-01-06', 1500.00),
('2023-01-07', 1550.00),
('2023-01-08', 1600.00),
('2023-01-09', 1650.00),
('2023-01-10', 1700.00),
('2023-01-11', 1750.00),
('2023-01-12', 1800.00),
('2023-01-13', 1850.00),
('2023-01-14', 1900.00),
('2023-01-15', 1950.00),
('2023-01-16', 2000.00),
('2023-01-17', 2050.00),
('2023-01-18', 2100.00),
('2023-01-19', 2150.00),
('2023-01-20', 2200.00),
('2023-01-21', 2250.00),
('2023-01-22', 2300.00),
('2023-01-23', 2350.00),
('2023-01-24', 2400.00),
('2023-01-25', 2450.00),
('2023-01-26', 2500.00),
('2023-01-27', 2550.00),
('2023-01-28', 2600.00),
('2023-01-29', 2650.00),
('2023-01-30', 2700.00),
('2023-01-31', 2750.00),
('2023-02-01', 2800.00),
('2023-02-02', 2850.00),
('2023-02-03', 2900.00),
('2023-02-04', 2950.00),
('2023-02-05', 3000.00),
('2023-02-06', 3050.00),
('2023-02-07', 3100.00),
('2023-02-08', 3150.00),
('2023-02-09', 3200.00),
('2023-02-10', 3250.00),
('2023-02-11', 3300.00),
('2023-02-12', 3350.00),
('2023-02-13', 3400.00),
('2023-02-14', 3450.00),
('2023-02-15', 3500.00),
('2023-02-16', 3550.00),
('2023-02-17', 3600.00),
('2023-02-18', 3650.00);

select *from salesdata;

select sum(sales_amount) as TotalAmount from salesdata;

select avg(sales_amount) as Averagesales from salesdata;

select date,sales_amount 
from salesdata
where sales_amount=(select max(sales_amount) from salesdata);

select date,sales_amount
from salesdata
where sales_amount=(select min(sales_amount) from salesdata);

select date,sales_amount,
	avg(sales_amount) over(order by date rows between 6 preceding and current row) as RollingAvg
from salesdata;

SELECT week(date) AS weekNumber,
SUM(sales_amount) AS WeeklySaIes
FROM salesdata
group by week(date)
ORDER BY WeekNumber;

select month(date) as MonthNumber,
sum(sales_amount) as Monthlysales
from salesdata
group by month(date)
order by MonthNumber;
