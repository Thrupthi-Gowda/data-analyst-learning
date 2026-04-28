-- Day 26 SQL Practice
-- Topic: VIEW (Simple)

-- Drop table
DROP TABLE IF EXISTS employees;

-- Create table
CREATE TABLE employees (
id INT,
name VARCHAR(50),
salary INT
);

-- Insert data
INSERT INTO employees VALUES (1,'Alex',40000);
INSERT INTO employees VALUES (2,'Tom',25000);
INSERT INTO employees VALUES (3,'Sara',50000);
INSERT INTO employees VALUES (4,'John',20000);

-- View all data
SELECT * FROM employees;

--create view (high salary)
create view high_salary as 
select name,salary
from employees
where salary >30000;

--use view
select * from high_salary;

--Another view (low salary)
create view low_salary as 
select name,salary
from employees
where salary<=30000;

--Use second view 
select * from low_salary;

--Drop view
drop view high_salary

--drop view 
drop view low_salary

