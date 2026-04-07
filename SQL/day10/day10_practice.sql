-- Day 10 SQL Practice
-- Topic: ORDER BY and LIMIT

-- View table
SELECT * FROM Employees;

-- Sort by salary (ascending)
SELECT * FROM Employees
ORDER BY salary ASC;

-- Sort by salary (descending)
SELECT * FROM Employees
ORDER BY salary DESC;

-- Top 3 highest salaries
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 3;

-- Lowest 2 salaries
SELECT * FROM Employees
ORDER BY salary ASC
LIMIT 2;

-- Sort by name
SELECT * FROM Employees
ORDER BY name ASC;