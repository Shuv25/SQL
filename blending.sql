use datapreprocessing;

CREATE TABLE orders (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE,
    totalamount DECIMAL(10, 2)
);

INSERT INTO orders (orderid, customerid, orderdate, totalamount) VALUES
(1, 101, '2023-06-01', 150.00),
(2, 102, '2023-06-05', 250.50),
(3, 103, '2023-06-10', 99.99),
(4, 104, '2023-06-15', 175.75),
(5, 105, '2023-06-20', 300.20),
(6, 106, '2023-06-25', 450.00),
(7, 107, '2023-06-30', 85.45);

CREATE TABLE customers (
    customerid INT PRIMARY KEY,
    customername VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers (customerid, customername, email) VALUES
(101, 'John Doe', 'johndoe@example.com'),
(102, 'Jane Smith', 'janesmith@example.com'),
(103, 'Robert Brown', 'robertbrown@example.com'),
(104, 'Emily Davis', 'emilydavis@example.com'),
(105, 'Michael Johnson', 'michaeljohnson@example.com'),
(106, 'Linda Wilson', 'lindawilson@example.com'),
(107, 'David Anderson', 'davidanderson@example.com');

SELECT 
    orders.orderid,
    orders.customerid,
    customers.customername,
    orders.orderdate,
    orders.totalamount,
    customers.email
FROM orders
JOIN customers ON orders.customerid = customers.customerid;

CREATE TABLE products (
    productid INT PRIMARY KEY,
    productname VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO products (productid, productname, price) VALUES
(1, 'Laptop', 999.99),
(2, 'Smartphone', 599.99),
(3, 'Tablet', 399.99),
(4, 'Smartwatch', 199.99),
(5, 'Headphones', 149.99),
(6, 'Keyboard', 49.99),
(7, 'Mouse', 29.99);

CREATE TABLE productdetails (
    orderid INT,
    productid INT,
    quantity INT,
    PRIMARY KEY (orderid, productid),
    FOREIGN KEY (orderid) REFERENCES orders(orderid),
    FOREIGN KEY (productid) REFERENCES products(productid)
);

INSERT INTO productdetails (orderid, productid, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 4, 3),
(4, 5, 1),
(5, 6, 2),
(6, 7, 4),
(7, 1, 1);

select
	orders.orderid,
    orders.customerid,
    customers.customername,
    orders.orderdate,
	products.productname,
    products.price,
    productdetails.quantity,
    (productdetails.quantity*products.price) as TotalAmount
from 
	orders 
    join customers ON orders.customerid = customers.customerid
	join productdetails on productdetails.orderid=productdetails.orderid
    join products on products.productid=products.productid
Into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Data_blen.csv'
fields terminated by ',' enclosed by '"'
lines terminated by '\n';  

show Variables like 'secure_file_priv';