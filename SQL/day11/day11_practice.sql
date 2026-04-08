--day11 sql practice -topic distinct and alias
-view table 
select * from employees;

-distict (unique values)
select distinct name from employees;

--distinct on salary 
select distinct salary from employees;

--alias(rename column)
select name as employee_name from employees;

--alias with multiple column 
select name as employee_name,
salary as employee_salary from employees;

-combine distinct and alias 
select distinct name as unique_names from employees;