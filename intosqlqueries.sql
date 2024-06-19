
USE queries;

CREATE TABLE Engineerings (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    LeadEngineer INT, -- Assuming LeadEngineer references EmployeeID from Employees table
    Budget DECIMAL(10, 2)
);

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, Name) VALUES
(1, 'Samar'),
(2, 'Samay'),
(3, 'Sarthak'),
(4, 'Anand'),
(5, 'Samir');

-- Insert sample data into Engineering table
INSERT INTO Engineerings (ProjectID, ProjectName, StartDate, EndDate, LeadEngineer, Budget) VALUES
(3, 'facebook', '3004-04-03', '3003-09-09', 1, 50000.00),
(4, 'microsoft', '3004-07-03', '3004-09-09', 2, 75000.00),
(5, 'github', '3004-03-03', '3004-05-05', 3, 80000.00),
(6, 'tesla', '3003-03-03', '3003-04-04', 4, 40000.00),
(7, 'instagram', '3003-06-03', '3003-03-08', 5, 60000.00);

UPDATE Engineerings
SET EndDate = '3003-08-05'
WHERE ProjectID = 3;

SELECT SUM(Budget) AS TotalBudget
FROM Engineerings;

SELECT Engineerings.ProjectName, Engineerings.Budget, Employees.Name AS LeadEngineer FROM Engineerings
JOIN Employees ON Engineerings.LeadEngineer = Employees.EmployeeID;

INSERT INTO Engineerings (ProjectID, ProjectName, StartDate, EndDate, LeadEngineer, Budget) VALUES
('9', 'facebook', '3004-04-03', '3003-09-09', 1, 50000.00);

select *from Engineerings;

select distinct LeadEngineer from Engineerings;

select *from Employees;

select e.Name as EngineerName from Employees as e;
