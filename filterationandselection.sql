use datapreprocessing;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    dept VARCHAR(100)
);

INSERT INTO employee (id, name, age, salary, dept) VALUES 
(1, 'Alice Johnson', 30, 60000.00, 'HR'),
(2, 'Bob Smith', 40, 75000.00, 'IT'),
(3, 'Charlie Brown', 35, 70000.00, 'Finance'),
(4, 'Diana Prince', 28, 65000.00, 'Marketing'),
(5, 'Ethan Hunt', 45, 80000.00, 'Operations');

select *from employee 
where age>=30;

select name,salary
from employee
where dept='Operations';

select name, age , salary
from employee
where age>=30 and salary>60000;

create temporary table temp_employee
select id,name,salary
from employee
where salary>70000;

select *from temp_employee;








