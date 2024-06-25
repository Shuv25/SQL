use subsqueries;

Create Table Customers(
CustomerID int primary key,
CustomerName varchar(255)
);
INSERT INTO Customers (CustomerID,CustomerName) VALUES
(1,'Alice '),
(2,'Bob'),
(3,'Charlie');

Create table Orders
(
	OrderlD int primary key,
	CustomerID int,
	OrderDate Date,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

insert into Orders values
(101, 1,' 2023-01-01'),
(102, 1,'2023-02-01'),
(103, 2, '2023-03-01'),
(104, 2,' 2023-04-01'),
(105, 3,'2023-05-01');

Select C. CustomerID,C.CustomerName,ifnull (TotalOrders,0) as TotalOrders from Customers C
left Join  (
			select CustomerID,Count(OrderlD) as TotalOrders from Orders Group BY CustomerID
			) as Customerorders on C. CustomerID = Customerorders. CustomerID;
