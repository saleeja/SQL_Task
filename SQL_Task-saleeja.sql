CREATE DATABASE Software_Company;

  -- For create table.
CREATE TABLE Employee_Data (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    JobTitle  VARCHAR(50),  
    Salary INT,
    Age INT,
    Experience INT,
    ProgrammingLang VARCHAR(50),
    JobLocation VARCHAR(50),
    Gender VARCHAR(10),
    Status VARCHAR(20)
);

-- For inserting values.
INSERT INTO Employee_Data VALUES (1, 'Karthik Raj', 'Development', 'Java Developer', 80000, 28, 5, 'Java', 'Chennai', 'Male', 'Single');
INSERT INTO Employee_Data VALUES (2, 'Aishwarya Nair', 'QA', 'QA Engineer', 72000, 30, 7, 'Python', 'Bangalore', 'Female', 'Married');
INSERT INTO Employee_Data VALUES (3, 'Vijay Khanna', 'Marketing', 'Marketing Specialist', 75000, 28, 5, 'N/A', 'Delhi', 'Male', 'Single');
INSERT INTO Employee_Data VALUES (4, 'Sneha Menon', 'Development', 'Senior Developer', 92000, 34, 9, 'C#', 'Hyderabad', 'Female', 'Married');
INSERT INTO Employee_Data VALUES (5, 'Siddharth Iyer', 'HR', 'HR Specialist', 78000, 27, 6, 'N/A', 'Chennai', 'Male', 'Single');
INSERT INTO Employee_Data VALUES (6, 'Kavya Rangan', 'Design', 'UI/UX Designer', 98000, 38, 13, 'UI/UX', 'Pune', 'Female', 'Married');
INSERT INTO Employee_Data VALUES (7, 'Aditya Joshi', 'IT Support', 'IT Support Specialist', 65000, 33, 6, 'N/A', 'Kolkata', 'Male', 'Married');
INSERT INTO Employee_Data VALUES (8, 'Meera Gupta', 'Development', 'Junior Developer', 88000, 25, 4, 'Python', 'Noida', 'Female', 'Single');
INSERT INTO Employee_Data VALUES (9, 'Rajesh Iyer', 'Marketing', 'Marketing Associate', 72000, 26, 4, 'N/A', 'Gurgaon', 'Male', 'Single');
INSERT INTO Employee_Data VALUES (10, 'Divya Menon', 'Development', 'Java Developer', 95000, 30, 7, 'Java', 'Bengaluru', 'Female', 'Married');


 -- Selecting all employees in the Development department:
SELECT * FROM Employee_Data WHERE Department = 'Development';

-- Inserting a new employee into the table:
INSERT INTO Employee_Data VALUES (11, 'Rajesh Khanna', 'Marketing', 'Marketing Specialist', 76000, 32, 8, 'N/A', 'Chandigarh', 'Male', 'Single');

-- Update EmployeeID for a specific employee:
UPDATE Employee_Data
SET EmployeeID = 11
WHERE EmployeeID = 31;

-- SELECT DISTINCT JobTitle FROM EmployeeData;
SELECT DISTINCT JobTitle  FROM Employee_Data;

-- Selecting employees with a salary greater than 80000:
SELECT * FROM Employee_Data WHERE Salary > 80000;

-- Selecting employees aged between 25 and 35:
SELECT * FROM Employee_Data WHERE Age BETWEEN 25 AND 35;

-- Selecting female employees or employees from Mumbai:
SELECT * FROM Employee_Data WHERE Gender = 'Female' OR JobLocation = 'Mumbai';

 -- Inserting a new employee with a specific job title using the IN clause:
INSERT INTO Employee_Data VALUES (12, 'Neha Sharma', 'Development', 'Senior Developer', 92000, 28, 5, 'Java', 'Bengaluru', 'Female', 'Single');

-- Selecting employees with specific job titles using the IN clause:
SELECT * FROM Employee_Data WHERE JobTitle IN ('Java Developer', 'QA Engineer');

-- Selecting employees with a salary between 60000 and 90000:
SELECT * FROM Employee_Data WHERE Salary BETWEEN 60000 AND 90000;

-- Selecting employees from specific locations using the IN clause:
SELECT * FROM Employee_Data WHERE JobLocation IN ('Hyderabad', 'Chennai');

-- Selecting single male employees or employees with experience greater than 7 years:
SELECT * FROM Employee_Data WHERE Status = 'Single' AND Gender = 'Male' OR Experience > 7;

 -- Inserting a new employee using the AND clause:
 INSERT INTO Employee_Data VALUES (33, 'Priyanka Singh', 'Marketing', 'Marketing Associate', 72000, 26, 4, 'N/A', 'Lucknow', 'Female', 'Single');

 -- Selecting employees with a specific job title and age using the OR clause:
 SELECT * FROM Employee_Data WHERE JobTitle = 'Marketing Associate' OR Age > 40;
 
 -- Selecting employees with a specific department and marital status:
SELECT * FROM Employee_Data WHERE Department = 'Design' AND (Status = 'Single' OR Status = 'Married');

-- Selecting employees with a specific age and job title using the AND and OR clauses
SELECT * FROM Employee_Data WHERE (Age > 35 AND Age < 45) AND (JobTitle = 'Java Developer' OR JobTitle = 'UI/UX Designer');

-- Selecting all employees in Marketing or HR departments with a salary greater than 70000:
SELECT * FROM Employee_Data WHERE (Department = 'Marketing' OR Department = 'HR') AND Salary > 70000;

 -- Inserting a new employee with a unique job title:
INSERT INTO Employee_Data VALUES (34, 'Suresh Menon', 'Development', 'Full Stack Developer', 90000, 31, 7, 'JavaScript', 'Chennai', 'Male', 'Single');

-- Retrieving distinct departments and their average salary:
SELECT DISTINCT Department, AVG(Salary) AS AverageSalary FROM Employee_Data GROUP BY Department;

-- Selecting employees with a specific job title or experience less than 5 years:
SELECT * FROM Employee_Data WHERE JobTitle = 'Senior Developer' OR Experience < 5;

-- Selecting employees with a specific job location and gender:
SELECT * FROM Employee_Data WHERE JobLocation = 'Pune' AND Gender = 'Female';


