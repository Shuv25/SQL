create database windows;
use windows;

CREATE TABLE Employee (
  empid INT PRIMARY KEY,
  empname VARCHAR(50) NOT NULL,
  salary DECIMAL(10,2), 
  department VARCHAR(50) NOT NULL
);

INSERT INTO Employee (empid, empname, salary, department)
VALUES (1001, 'John Smith', 85000.00, 'Engineering'),
       (1002, 'Jane Doe', 72000.00, 'Marketing'),
       (1003, 'Michael Lee', 98000.00, 'Sales'),
       (1004, 'Olivia Jones', 68000.00, 'Customer Service'),
       (1005, 'David Williams', 110000.00, 'Finance'),
       (1006, 'Amanda Miller', 55000.00, 'Human Resources'),
       (1007, 'Daniel Garcia', 82000.00, 'IT'),
       (1008, 'Sophia Hernandez', 70000.00, 'Operations'),
       (1009, 'William Brown', 90000.00, 'Research & Development'),
       (1010, 'Emily Johnson', 60000.00, 'Administration');
       
select*from Employee;


select department,max(salary) as max_salary from Employee group by department;

select * ,max(salary) over(partition by department) as max_salary from Employee;

select *, row_number() over() as rn from Employee;

select *, row_number() over(partition by department) as rn from Employee order by empid;

select * from(
select *, rank() over(partition by department) as rnk from Employee order by salary desc
) x
where x.rnk<3;


select * from(
select *, rank() over(partition by department) as rnk,
dense_rank() over(partition by department) as Densrnk from Employee order by salary desc
) x
where x.rnk<3;

select *, lag(salary) over(order by empid) as previous_salary from Employee;

select *, lag(salary,2,0) over(order by empid) as previous_salary from Employee;

select *,
lag(salary) over(order by empid) as previous_salary , 
lead(salary) over(order by empid) as next_salary from Employee;

select e.*,
lag(salary) over(order by empid) as prevous_salary,
case when e.salary>lag(salary) over(order by empid) then "Higher then previous"
	 when e.salary<lag(salary) over(order by empid) then "Lower then previous"
     when e.salary=lag(salary) over(order by empid) then "Same previous"
end sal_range
from Employee e;
