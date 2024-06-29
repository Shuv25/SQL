show databases;

use datapreprocessing;

CREATE TABLE customer (
    id INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

-- Insert values into the customer table
INSERT INTO customer (id, firstname, lastname) VALUES (1, 'John', 'Doe'),
													(2, 'Jane', 'Smith'),
													(3, 'Michael', 'Johnson'),
													(4, 'Emily', 'Davis'),
													(5, 'Chris', 'Brown');
select *from customer;

select concat(firstname,' ',lastname) as FullName from customer;

select upper(firstname) as Uppercase from customer;

select lower(Lastname) as Lowercase from customer;

CREATE TABLE Ordertab (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE,
    totalamount DECIMAL(10, 2),
    FOREIGN KEY (customerid) REFERENCES customer(id)
);

INSERT INTO Ordertab (orderid, customerid, orderdate, totalamount) VALUES 
(101, 1, '2023-06-15', 250.75),
(102, 2, '2023-06-16', 180.50),
(103, 3, '2023-06-17', 320.00),
(104, 4, '2023-06-18', 150.25),
(105, 5, '2023-06-19', 275.90);

CREATE TABLE product (
    productid INT PRIMARY KEY,
    unitprice DECIMAL(10, 2),
    productname VARCHAR(100)
);

INSERT INTO product (productid, unitprice, productname) VALUES 
(1, 10.50, 'Product A'),
(2, 20.75, 'Product B'),
(3, 15.00, 'Product C'),
(4, 30.00, 'Product D'),
(5, 25.90, 'Product E');



