--Day25 SQL practice
--Topic:CASE WHEN

--drop table
drop table if exists empoyees;

--create table 
create table employees(
    id int,
    name varchar(50),
    department varchar(50),
    salary int
);

--insert data
insert into employees values (1,'Alex','IT',40000);
insert into employees values (2,'Tom','HR',25000);
insert into employees values (3,'Sara','IT',60000);
insert into employees values (4,'john','HR',20000);
insert into employees values (5,'David','IT',45000);
insert into employees values (6,'Emma','HR',35000);

--1.show salary category
select name,salary,
CASE
when salary >50000 then 'high'
when salary between 30000 and 50000 then 'medium'
else 'low'
end as salary_category
from employees;

--2.department type 
select name,department,
CASE
when department='IT' then 'Technical'
else 'Non-Technical'
end as dept_type
from employees;

--3.Bonus calculation
select name,salary,
CASE
when salary >50000 then salary*0.10
when salary >30000 then salary*0.05
else salary * 0.02
END AS bonus
FROM employees;

-- 4. Count employees by category
SELECT
CASE
WHEN salary > 50000 THEN 'High'
WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
ELSE 'Low'
END AS category,
COUNT(*) AS total
FROM employees
GROUP BY category;
