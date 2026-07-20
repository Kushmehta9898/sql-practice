create database practice;
-- Create the table
CREATE TABLE EmployeeDetails (
    Name VARCHAR(50),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Age INT
);

-- Insert 10 records
INSERT INTO EmployeeDetails (Name, Address, PhoneNumber, Age)
VALUES
('Amit Shah', 'Vadodara', '9876543210', 25),
('Priya Patel', 'Ahmedabad', '9876543211', 22),
('Rahul Mehta', 'Surat', '9876543212', 28),
('Neha Joshi', 'Rajkot', '9876543213', 24),
('Karan Desai', 'Bhavnagar', '9876543214', 30),
('Sneha Trivedi', 'Anand', '9876543215', 21),
('Vivek Kumar', 'Jamnagar', '9876543216', 27),
('Pooja Sharma', 'Gandhinagar', '9876543217', 26),
('kush mehta', 'Junagadh', '9876543218', 29),
('Anjali Verma', 'Mehsana', '9876543219', 23);

-- Display all records
SELECT * FROM EmployeeDetails;

SELECT 'Kush Mehta' AS Name;

SELECT 7 * 4 AS Product;

SELECT (7 - 4) * 8 AS Result;

SELECT 'Brewster''s SQL Training Class' AS Phrase;

SELECT 'Day 1 of Training' AS Training, 5 * 3 AS Result;

CREATE TABLE Employeess (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Age INT,
    Salary DECIMAL(10,2) NULL
);

INSERT INTO Employeess
(EmployeeID, EmployeeName, Department, Address, PhoneNumber, Age, Salary)
VALUES
(101, 'Rahul Sharma', 'IT', 'Vadodara', '9876543210', 25, 45000.00);

INSERT INTO Employeess
(EmployeeID, EmployeeName, Department, Address, PhoneNumber, Age, Salary)
VALUES
(102, 'Priya Patel', 'HR', 'Ahmedabad', '9876543211', 24, 40000.00),
(103, 'Amit Mehta', 'HR', 'Surat', '9876543212', 27, 42000.00),
(104, 'Neha Shah', 'HR', 'Rajkot', '9876543213', 26, 41000.00);

INSERT INTO Employeess
(EmployeeID, EmployeeName, Department, Address, PhoneNumber, Age, Salary)
VALUES
(105, 'Karan Desai', 'Finance', 'Anand', '9876543214', 28, NULL);

UPDATE Employeess
SET Salary = 85000
WHERE Department = 'Cloud';

UPDATE Employeess
SET Department = 'Cloud',
    Salary = 90000
WHERE EmployeeName = 'Rahul Sharma';

UPDATE Employeess
SET Salary = Salary * 1.10
WHERE Department = 'AI';

UPDATE Employeess
SET Salary = 30000
WHERE Salary IS NULL;

DELETE FROM Employeess
WHERE EmployeeID = 101;

DELETE FROM Employeess
WHERE Department = 'HR';

DELETE FROM Employeess
WHERE Department = 'Finance'
  AND Salary < 20000;

  select * from Employeess;