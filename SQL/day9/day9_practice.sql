-- Day 9 SQL Practice
-- Topic: UPDATE and DELETE

-- View table
SELECT * FROM Employees;

-- UPDATE: change salary of a specific employee
UPDATE Employees
SET salary = 50000
WHERE id = 1;

-- UPDATE multiple columns
UPDATE Employees
SET name = 'Alexander', salary = 55000
WHERE id = 1;

-- UPDATE all rows (be careful)
-- UPDATE Employees SET salary = 30000;

-- DELETE: remove a specific row
DELETE FROM Employees
WHERE id = 2;

-- DELETE all rows (be careful)
-- DELETE FROM Employees;

-- View updated table
SELECT * FROM Employees;