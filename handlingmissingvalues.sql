create database datapreprocessing;

use datapreprocessing;

CREATE TABLE app_data (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    age INT,
    country VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Insert the data
INSERT INTO app_data (id, name, email, age, country, salary) VALUES
(1, 'John Doe', 'johndoe@example.com', 28, 'USA', 50000),
(2, 'Jane Smith', 'janesmith@example.com', NULL, 'UK', 60000),
(3, 'John Doe', 'johndoe@example.com', 28, 'USA', 50000),
(4, 'Anna Brown', 'annabrown@example.com', 32, 'Canada', NULL),
(5, 'Emily Davis', NULL, 27, 'Australia', 45000),
(6, 'Michael Wilson', 'michael@example.com', 45, 'USA', 80000),
(7, 'Michael Wilson', 'michael@example.com', 45, 'USA', 80000),
(8, 'Chris Johnson', 'chrisj@example.com', NULL, 'USA', 70000),
(9, 'Patricia Williams', 'patriciaw@example.com', 39, 'UK', 65000),
(10, 'David Lee', 'davidl@example.com', 52, 'USA', 85000),
(11, 'Mary Jones', 'maryjones@example.com', 23, 'USA', NULL),
(12, NULL, 'unknown@example.com', 29, 'Canada', 49000),
(13, 'Robert Brown', 'robertbrown@example.com', 36, 'Australia', 75000),
(14, 'Olivia Taylor', 'oliviat@example.com', 30, 'UK', NULL);

select *from app_data;

create table notmissingage as
select avg(age) as avg_age from app_data
where age is not null;

select *from notmissingage;

update app_data set age=(select avg_age from notmissingage) where age is null;

create table nonmissingsalary as
select avg(salary) as avg_salary from app_data
where salary is not null; 

select *from nonmissingsalary;

update app_data 
set salary=(select avg_salary from nonmissingsalary)
where salary is null;

select *from app_data;

WITH frequent_names AS (
    SELECT name, COUNT(*) AS name_count
    FROM app_data
    WHERE name IS NOT NULL
    GROUP BY name
    ORDER BY name_count DESC
    LIMIT 1
)
SELECT name
FROM frequent_names;

WITH frequent_names AS (
    SELECT name, COUNT(*) AS name_count
    FROM app_data
    WHERE name IS NOT NULL
    GROUP BY name
    ORDER BY name_count DESC
    LIMIT 1
)
UPDATE app_data
SET name = (SELECT name FROM frequent_names)
WHERE name IS NULL;

select *from app_data;

with frequent_email as
(select email,count(*) as email_count
from app_data
where email is not null
group by email
order by email_count desc
limit 1)
SELECT email
FROM frequent_email;

with frequent_email as
(select email,count(*) as email_count
from app_data
where email is not null
group by email
order by email_count desc
limit 1)
update app_data set
email=(select email from frequent_email)
where email is null;

select *from app_data;