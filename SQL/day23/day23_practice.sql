--project 1 : employee data analysis
--drop table if exists
drop table if exist employee;

--create table
create table employees(
    id int,
    name varchar(50),
    department varchar(50),
    salary int 
);

--insert data
insert into employees values (1,'alex','IT',40000)
insert into employees values (2,'Tom','HR',25000)
INSERT INTO employees VALUES (3,'Sara','IT',50000);
INSERT INTO employees VALUES (4,'John','HR',25000);
INSERT INTO employees VALUES (5,'David','IT',45000);
INSERT INTO employees VALUES (6,'Emma','HR',35000);
INSERT INTO employees VALUES (7,'Mike','Finance',60000);
INSERT INTO employees VALUES (8,'Anna','Finance',55000);


-- 1. View all employees
SELECT * FROM employees;

-- 2. Highest salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- 3. Average salary
SELECT AVG(salary) AS avg_salary FROM employees;

-- 4. Employees above average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 5. Count employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 6. Total salary per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 7. Department with highest average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

-- 8. Top 3 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;
