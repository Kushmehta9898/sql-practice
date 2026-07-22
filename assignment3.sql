CREATE DATABASE assig3;
GO




CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    Experience INT,
    City VARCHAR(30)
);
GO

INSERT INTO Employee
(EmployeeID, Name, Department, Salary, Bonus, Experience, City)
VALUES
(101,'Amit','IT',65000,5000,5,'Ahmedabad'),
(102,'Priya','HR',55000,3000,4,'Vadodara'),
(103,'Rahul','Finance',70000,6000,8,'Surat'),
(104,'Sneha','Marketing',48000,2500,3,'Rajkot'),
(105,'Karan','IT',80000,7000,9,'Vadodara'),
(106,'Neha','Cloud',90000,9000,10,'Ahmedabad'),
(107,'Rohan','AI',95000,10000,11,'Pune'),
(108,'Pooja','Finance',60000,4500,6,'Mumbai'),
(109,'Vikas','HR',52000,2800,2,'Delhi'),
(110,'Anjali','Marketing',58000,3500,5,'Jaipur'),
(111,'Arjun','Cloud',87000,7500,8,'Bengaluru'),
(112,'Meera','AI',99000,11000,12,'Hyderabad'),
(113,'Nikhil','IT',72000,5000,7,'Chennai'),
(114,'Kavya','Finance',68000,5200,6,'Vadodara'),
(115,'Sahil','HR',50000,3000,3,'Indore'),
(116,'Isha','Marketing',62000,4000,5,'Nagpur'),
(117,'Yash','Cloud',91000,8500,10,'Surat'),
(118,'Divya','AI',105000,12000,13,'Ahmedabad'),
(119,'Harsh','IT',75000,6000,8,'Vadodara'),
(120,'Komal','Finance',64000,4500,7,'Mumbai');
GO

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;

SELECT Department,
       MAX(Salary) AS HighestSalary,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department;

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;

SELECT Department,
       MIN(Salary) AS MinimumSalary
FROM Employee
GROUP BY Department;

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

SELECT Department,
       SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 100000;

SELECT Department,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 60000;

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) = 1;

SELECT *
FROM Employee
ORDER BY Salary DESC;

SELECT *
FROM Employee
ORDER BY Name ASC;

SELECT *
FROM Employee
ORDER BY Department ASC, Name ASC;