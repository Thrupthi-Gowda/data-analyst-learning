-- DAY 30: WINDOW FUNCTIONS PRACTICE

-- Create Table
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert Data
INSERT INTO employees VALUES
(1, 'A', 'IT', 50000),
(2, 'B', 'IT', 60000),
(3, 'C', 'HR', 40000),
(4, 'D', 'HR', 45000),
(5, 'E', 'IT', 60000),
(6, 'F', 'HR', 45000);

-- 1. ROW_NUMBER()
SELECT name, department, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

-- 2. RANK()
SELECT name, department, salary,
RANK() OVER (ORDER BY salary DESC) AS rank_num
FROM employees;

-- 3. DENSE_RANK()
SELECT name, department, salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 4. PARTITION BY (Department-wise ranking)
SELECT name, department, salary,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;

-- 5. Top 2 salaries per department
SELECT * FROM (
    SELECT name, department, salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk <= 2;

-- 6. Second highest salary (using window function)
SELECT salary FROM (
    SELECT salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;

-- 7. Remove duplicates (example logic)
SELECT * FROM (
    SELECT *,
    ROW_NUMBER() OVER (PARTITION BY name ORDER BY id) AS rn
    FROM employees
) t
WHERE rn = 1;