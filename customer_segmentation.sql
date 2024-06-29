create database customer_profiling;

use customer_profiling;

CREATE TABLE Customers (
    customerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO Customers (customerid, firstname, lastname, email, gender, age, city, state)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'Male', 30, 'New York', 'NY'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'Female', 25, 'Los Angeles', 'CA'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', 'Male', 35, 'Chicago', 'IL'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', 'Female', 28, 'Houston', 'TX'),
    (5, 'William', 'Jones', 'william.jones@example.com', 'Male', 40, 'Phoenix', 'AZ'),
    (6, 'Emma', 'Davis', 'emma.davis@example.com', 'Female', 22, 'Philadelphia', 'PA'),
    (7, 'Matthew', 'Miller', 'matthew.miller@example.com', 'Male', 33, 'San Antonio', 'TX'),
    (8, 'Olivia', 'Wilson', 'olivia.wilson@example.com', 'Female', 27, 'San Diego', 'CA'),
    (9, 'Daniel', 'Moore', 'daniel.moore@example.com', 'Male', 38, 'Dallas', 'TX'),
    (10, 'Sophia', 'Taylor', 'sophia.taylor@example.com', 'Female', 24, 'San Jose', 'CA'),
    (11, 'Alexander', 'Anderson', 'alexander.anderson@example.com', 'Male', 32, 'Austin', 'TX'),
    (12, 'Isabella', 'Thomas', 'isabella.thomas@example.com', 'Female', 26, 'Jacksonville', 'FL'),
    (13, 'James', 'Jackson', 'james.jackson@example.com', 'Male', 37, 'Indianapolis', 'IN'),
    (14, 'Charlotte', 'White', 'charlotte.white@example.com', 'Female', 23, 'San Francisco', 'CA'),
    (15, 'Benjamin', 'Harris', 'benjamin.harris@example.com', 'Male', 31, 'Columbus', 'OH'),
    (16, 'Amelia', 'Martin', 'amelia.martin@example.com', 'Female', 29, 'Charlotte', 'NC'),
    (17, 'Logan', 'Thompson', 'logan.thompson@example.com', 'Male', 39, 'Seattle', 'WA'),
    (18, 'Evelyn', 'Garcia', 'evelyn.garcia@example.com', 'Female', 21, 'Denver', 'CO'),
    (19, 'Mason', 'Martinez', 'mason.martinez@example.com', 'Male', 34, 'Washington', 'DC'),
    (20, 'Harper', 'Robinson', 'harper.robinson@example.com', 'Female', 25, 'Boston', 'MA'),
    (21, 'Ethan', 'Clark', 'ethan.clark@example.com', 'Male', 36, 'Nashville', 'TN'),
    (22, 'Ava', 'Rodriguez', 'ava.rodriguez@example.com', 'Female', 22, 'Las Vegas', 'NV'),
    (23, 'Jacob', 'Lewis', 'jacob.lewis@example.com', 'Male', 33, 'Detroit', 'MI'),
    (24, 'Liam', 'Lee', 'liam.lee@example.com', 'Male', 28, 'Portland', 'OR'),
    (25, 'Avery', 'Walker', 'avery.walker@example.com', 'Female', 24, 'Oklahoma City', 'OK'),
    (26, 'Michael', 'Hall', 'michael.hall@example.com', 'Male', 30, 'Memphis', 'TN'),
    (27, 'Madison', 'Young', 'madison.young@example.com', 'Female', 26, 'Louisville', 'KY'),
    (28, 'Alexander', 'Allen', 'alexander.allen@example.com', 'Male', 35, 'Baltimore', 'MD'),
    (29, 'Chloe', 'King', 'chloe.king@example.com', 'Female', 23, 'Milwaukee', 'WI'),
    (30, 'William', 'Wright', 'william.wright@example.com', 'Male', 31, 'Albuquerque', 'NM'),
    (31, 'Grace', 'Scott', 'grace.scott@example.com', 'Female', 27, 'Tucson', 'AZ'),
    (32, 'Daniel', 'Green', 'daniel.green@example.com', 'Male', 32, 'Fresno', 'CA'),
    (33, 'Natalie', 'Baker', 'natalie.baker@example.com', 'Female', 28, 'Sacramento', 'CA'),
    (34, 'Ryan', 'Adams', 'ryan.adams@example.com', 'Male', 29, 'Atlanta', 'GA'),
    (35, 'Aria', 'Nelson', 'aria.nelson@example.com', 'Female', 25, 'Kansas City', 'MO'),
    (36, 'Jack', 'Hill', 'jack.hill@example.com', 'Male', 30, 'Omaha', 'NE'),
    (37, 'Aubrey', 'Ramirez', 'aubrey.ramirez@example.com', 'Female', 26, 'Raleigh', 'NC'),
    (38, 'Luke', 'Campbell', 'luke.campbell@example.com', 'Male', 31, 'Miami', 'FL'),
    (39, 'Addison', 'Mitchell', 'addison.mitchell@example.com', 'Female', 27, 'Orlando', 'FL'),
    (40, 'Owen', 'Perez', 'owen.perez@example.com', 'Male', 32, 'Houston', 'TX'),
    (41, 'Zoey', 'Roberts', 'zoey.roberts@example.com', 'Female', 24, 'Los Angeles', 'CA'),
    (42, 'Wyatt', 'Turner', 'wyatt.turner@example.com', 'Male', 33, 'New York', 'NY'),
    (43, 'Hannah', 'Phillips', 'hannah.phillips@example.com', 'Female', 22, 'Chicago', 'IL'),
    (44, 'Christian', 'Evans', 'christian.evans@example.com', 'Male', 34, 'San Francisco', 'CA'),
    (45, 'Brooklyn', 'Gonzalez', 'brooklyn.gonzalez@example.com', 'Female', 23, 'Dallas', 'TX'),
    (46, 'Sebastian', 'Carter', 'sebastian.carter@example.com', 'Male', 35, 'Seattle', 'WA'),
    (47, 'Samantha', 'Morales', 'samantha.morales@example.com', 'Female', 21, 'Philadelphia', 'PA'),
    (48, 'Gabriel', 'Nelson', 'gabriel.nelson@example.com', 'Male', 36, 'Phoenix', 'AZ'),
    (49, 'Aaliyah', 'Rivera', 'aaliyah.rivera@example.com', 'Female', 25, 'San Diego', 'CA'),
    (50, 'Anthony', 'Gomez', 'anthony.gomez@example.com', 'Male', 37, 'Austin', 'TX');
    
select *from customers;

CREATE TABLE Transactions (
    transactionid INT PRIMARY KEY AUTO_INCREMENT,
    customerid INT,
    transactiondate DATE,
    amount DECIMAL(10, 2),
    product VARCHAR(100),
    category VARCHAR(50),
    FOREIGN KEY (customerid) REFERENCES Customers(customerid)
);

INSERT INTO Transactions (customerid, transactiondate, amount, product, category)
VALUES
    (1, '2023-06-01', 100.50, 'Laptop', 'Electronics'),
    (2, '2023-06-02', 55.75, 'Book', 'Education'),
    (3, '2023-06-03', 200.00, 'Smartphone', 'Electronics'),
    (4, '2023-06-04', 75.25, 'Headphones', 'Electronics'),
    (5, '2023-06-05', 150.00, 'Shoes', 'Fashion'),
    (6, '2023-06-06', 30.99, 'T-shirt', 'Fashion'),
    (7, '2023-06-07', 45.80, 'Backpack', 'Accessories'),
    (8, '2023-06-08', 85.50, 'Gaming Console', 'Electronics'),
    (9, '2023-06-09', 120.75, 'Watch', 'Accessories'),
    (10, '2023-06-10', 25.49, 'Notebook', 'Education'),
    (11, '2023-06-11', 300.00, 'Camera', 'Electronics'),
    (12, '2023-06-12', 80.25, 'Sunglasses', 'Fashion'),
    (13, '2023-06-13', 55.30, 'Printer', 'Electronics'),
    (14, '2023-06-14', 90.00, 'Jacket', 'Fashion'),
    (15, '2023-06-15', 40.50, 'Desk Lamp', 'Home'),
    (16, '2023-06-16', 65.75, 'Perfume', 'Beauty'),
    (17, '2023-06-17', 110.20, 'Guitar', 'Music'),
    (18, '2023-06-18', 70.99, 'Running Shoes', 'Sports'),
    (19, '2023-06-19', 95.25, 'Television', 'Electronics'),
    (20, '2023-06-20', 150.50, 'Handbag', 'Fashion'),
    (21, '2023-06-21', 35.75, 'Cookbook', 'Cooking'),
    (22, '2023-06-22', 200.00, 'Tablet', 'Electronics'),
    (23, '2023-06-23', 45.25, 'Plant', 'Home'),
    (24, '2023-06-24', 60.99, 'Dress', 'Fashion'),
    (25, '2023-06-25', 125.00, 'Basketball', 'Sports'),
    (26, '2023-06-26', 180.75, 'Drone', 'Electronics'),
    (27, '2023-06-27', 85.30, 'Tool Set', 'Tools'),
    (28, '2023-06-28', 70.00, 'Sweater', 'Fashion'),
    (29, '2023-06-29', 55.50, 'Camping Gear', 'Outdoor'),
    (30, '2023-06-30', 20.49, 'Calendar', 'Office'),
    (31, '2023-07-01', 220.00, 'Smart Speaker', 'Electronics'),
    (32, '2023-07-02', 95.25, 'Wallet', 'Accessories'),
    (33, '2023-07-03', 45.50, 'Fitness Tracker', 'Sports'),
    (34, '2023-07-04', 75.75, 'Painting', 'Art'),
    (35, '2023-07-05', 130.20, 'Skateboard', 'Sports'),
    (36, '2023-07-06', 60.99, 'Scarf', 'Fashion'),
    (37, '2023-07-07', 105.25, 'Binoculars', 'Outdoor'),
    (38, '2023-07-08', 180.50, 'Monitor', 'Electronics'),
    (39, '2023-07-09', 25.75, 'Novel', 'Books'),
    (40, '2023-07-10', 150.00, 'Gym Equipment', 'Fitness'),
    (41, '2023-07-11', 90.30, 'Vacuum Cleaner', 'Home'),
    (42, '2023-07-12', 55.00, 'Hat', 'Fashion'),
    (43, '2023-07-13', 70.49, 'Keyboard', 'Electronics'),
    (44, '2023-07-14', 200.00, 'Sleeping Bag', 'Outdoor'),
    (45, '2023-07-15', 35.25, 'Laptop Bag', 'Accessories'),
    (46, '2023-07-16', 80.50, 'Printer Ink', 'Office'),
    (47, '2023-07-17', 95.75, 'Soccer Ball', 'Sports'),
    (48, '2023-07-18', 110.20, 'Headset', 'Electronics'),
    (49, '2023-07-19', 45.99, 'Necklace', 'Jewelry'),
    (50, '2023-07-20', 300.00, 'Power Tools', 'Tools');
    
select *from Transactions;

select
	case
		when age<25 then 'Young'
        when age between 24 and 40 then 'Middle Age'
        else 'Senior'
	End as AgeSegment,
    count(*) as CustomerCount
from customers
group by AgeSegment;

select
	case
		when age<25 then 'Young'
        when age between 24 and 40 then 'Middle Age'
        else 'Senior'
	End as AgeSegment,
    avg(amount) as AvgTransactionAmount,
    count(*) as TransactionCount
from customers
join Transactions on customers.customerid=Transactions.customerid
group by AgeSegment;
