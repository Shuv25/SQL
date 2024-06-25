use subsqueries;

Create Table Products(
ProductID int primary key,
ProductName varchar(99),
Price Decimal(10,2)
);

INSERT INTO Products (ProductID, ProductName, Price) values
(1,'widget A',10.99),
(2,'Widget B',15.49),
(3,'Widget C',8.75);

select ProductName from Products p where p.Price=(select max(Price) from Products);