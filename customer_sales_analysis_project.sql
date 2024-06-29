create database sales_data;

use sales_data;

select *from sales_data_sample;

-- revenue per produt
select 
PRODUCTCODE,sum(SALES) AS TOTALREVENUE
FROM sales_data_sample
group by PRODUCTCODE order by TOTALREVENUE;

-- count of products
select 
PRODUCTCODE,count(PRODUCTCODE) as ProductCount 
from sales_data_sample
group by PRODUCTCODE;

-- total unique products
select count(*)
from(select PRODUCTCODE FROM sales_data_sample group by PRODUCTCODE)
as unique_products;

select *from sales_data_sample;

-- SALES PER YEAR
select
SUM(SALES) AS YEARLYSALE,YEAR_ID
FROM sales_data_sample
group by YEAR_ID ORDER BY YEAR_ID;

-- SALES PER MONTH
select
SUM(SALES) AS MONTHLYSALE,MONTH_ID
FROM sales_data_sample
group by MONTH_ID ORDER BY MONTH_ID;

-- SALES PER PRODUCT ON EACH YEAR
select
PRODUCTCODE,YEAR_ID,SUM(SALES) AS YEARLYSALE
FROM sales_data_sample
group by YEAR_ID,PRODUCTCODE ORDER BY YEAR_ID;


-- SALES PER PRODUCT ON EACH MONTH
select
PRODUCTCODE,MONTH_ID,SUM(SALES) AS MONTHLYSALE
FROM sales_data_sample
group by MONTH_ID,PRODUCTCODE ORDER BY MONTH_ID;

SELECT *FROM sales_data_sample;

-- MAX AMOUNT SPAENT BY TOP 5 CUSTOMER
select CUSTOMERNAME,SUM(SALES) as TotalSapending
FROM sales_data_sample
group by CUSTOMERNAME ORDER BY TotalSapending DESC
LIMIT 5;

-- MIN AMOUNT SPAENT BY TOP 5 CUSTOMER
select CUSTOMERNAME,SUM(SALES) as TotalSapending
FROM sales_data_sample
group by CUSTOMERNAME ORDER BY TotalSapending
LIMIT 5;

-- converting it into csv file
SELECT CUSTOMERNAME, SUM(SALES) AS TotalSpending
INTO OUTFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CustomerSpending.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM sales_data_sample
GROUP BY CUSTOMERNAME
ORDER BY TotalSpending DESC;