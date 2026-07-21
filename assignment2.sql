CREATE TABLE Employeesss
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    Experience INT,
    City VARCHAR(30)
);
INSERT INTO Employeesss (EmployeeID, Name, Department, Salary, Bonus, Experience, City)
VALUES
(101, 'Aarav', 'IT', 55000, 5000, 2, 'Mumbai'),
(102, 'Vivaan', 'HR', 48000, 3500, 3, 'Delhi'),
(103, 'Aditya', 'Finance', 70000, 8000, 6, 'Pune'),
(104, 'Krishna', 'Marketing', 62000, 6000, 5, 'Ahmedabad'),
(105, 'Rohan', 'Sales', 45000, 3000, 2, 'Surat'),
(106, 'Priya', 'IT', 85000, 12000, 8, 'Vadodara'),
(107, 'Neha', 'HR', 53000, 4000, 4, 'Jaipur'),
(108, 'Ananya', 'Finance', 92000, 15000, 10, 'Chennai'),
(109, 'Karan', 'Marketing', 67000, 7000, 5, 'Hyderabad'),
(110, 'Sneha', 'Sales', 40000, 2500, 1, 'Indore'),
(111, 'Rahul', 'IT', 76000, 9000, 7, 'Nagpur'),
(112, 'Meera', 'Finance', 81000, 10000, 8, 'Bhopal'),
(113, 'Ishaan', 'HR', 50000, 3500, 3, 'Lucknow'),
(114, 'Pooja', 'Marketing', 59000, 4500, 4, 'Kolkata'),
(115, 'Arjun', 'Sales', 47000, 3000, 2, 'Rajkot'),
(116, 'Diya', 'IT', 98000, 18000, 12, 'Vadodara'),
(117, 'Manav', 'Finance', 73000, 8500, 6, 'Mumbai'),
(118, 'Nisha', 'HR', 52000, 3800, 3, 'Delhi'),
(119, 'Yash', 'Marketing', 64000, 6200, 5, 'Pune'),
(120, 'Simran', 'Sales', 46000, 2800, 2, 'Ahmedabad'),
(121, 'Dev', 'IT', 88000, 13000, 9, 'Surat'),
(122, 'Riya', 'Finance', 79000, 9200, 7, 'Jaipur'),
(123, 'Harsh', 'HR', 51000, 3600, 3, 'Hyderabad'),
(124, 'Kavya', 'Marketing', 61000, 5000, 4, 'Indore'),
(125, 'Aryan', 'Sales', 49000, 3200, 2, 'Nagpur'),
(126, 'Tanvi', 'IT', 105000, 20000, 15, 'Chennai'),
(127, 'Sahil', 'Finance', 87000, 11500, 9, 'Bhopal'),
(128, 'Aisha', 'HR', 54000, 4200, 4, 'Lucknow'),
(129, 'Kabir', 'Marketing', 69000, 7300, 6, 'Kolkata'),
(130, 'Anika', 'Sales', 52000, 3500, 3, 'Vadodara');

SELECT * FROM Employeesss;

SELECT *
FROM Employeesss
WHERE Salary > 50000;

SELECT *
FROM Employeesss
WHERE Department = 'IT'
AND Experience > 5;

SELECT *
FROM Employeess
WHERE Salary BETWEEN 45000 AND 60000;

SELECT *
FROM Employeesss
WHERE City IN ('Mumbai', 'Delhi');

SELECT Name,
       Salary,
       Salary * 12 AS AnnualIncome
FROM Employeesss;

SELECT *
FROM Employeesss
WHERE Name LIKE 'A%';

SELECT MAX(Salary) AS HighestSalary
FROM Employeesss;

SELECT SUM(Bonus) AS TotalBonus
FROM Employeesss
WHERE Department = 'IT';

SELECT
    MIN(Experience) AS MinimumExperience,
    MAX(Experience) AS MaximumExperience
FROM Employeesss;

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employeesss
GROUP BY Department;

SELECT SUM(Bonus) AS TotalBonus
FROM Employeesss
WHERE Department = 'IT';

ALTER TABLE Employeesss
ADD Email VARCHAR(100);

ALTER TABLE Employeesss
ALTER COLUMN Salary DECIMAL(10,2);

ALTER TABLE Employeesss
DROP COLUMN Bonus;