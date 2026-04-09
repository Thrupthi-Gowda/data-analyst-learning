-- Day 12 SQL Practice
-- Topic: ALTER TABLE

-- View table
SELECT * FROM Employees;

-- Add new column
ALTER TABLE Employees
ADD age INT;

-- Modify column datatype
ALTER TABLE Employees
MODIFY salary FLOAT;

-- Rename column
ALTER TABLE Employees
CHANGE name full_name VARCHAR(50);

-- Drop column
ALTER TABLE Employees
DROP COLUMN age;

-- View updated table
SELECT * FROM Employees;