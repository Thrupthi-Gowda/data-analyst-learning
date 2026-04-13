--day 16 sql practice 
--topic:groupby + count
--drop table if exists 
drop table exists employees;
--create table
create table employees(id int,name varchar(50),department_id int,salary int);
--insert data 
insert into employees values(1,'Alex',1,40000);
insert into employees values(2,'Tom',2,60000);
insert into employees values(4,'john',1,30000);
insert into employees values(5,'David',1,45000);

--1.Count total employees 
select count(*) as total_employees from employees;
--2.count employees in each department
select department_id , count(*) as total 
from employees
group by department_id;
--3.average salary per department
select department_id,avg(salary) as avg_salary
from employees
group by department_id;
4.highest salary per department
select department_id,max(salary) as max_salary
max_salary
from employees
group by department_id;
5.lowest salary per department
select department_id,min(salary) as min_salary
from employees
group by department_id;