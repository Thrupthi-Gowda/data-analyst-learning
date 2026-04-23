--day 22 sql practice
--topic :interview questions

-drop table if exists 
drop table if exists employees;

--create table 
create table employees(
    id int,
    name varchar(50),
    department varchar(50),
    salary int
);

--insert data
insert into employees values(1,'alex','it',40000);
insert into employees values(2,'tom','hr',30000);
insert into employees values(3,'sara','it',50000);
insert into employees values(4,'john','hr',25000);
insert into employees values(5,'david','it',45000);
insert into employees values(6,'emma','hr',35000);

--1.find highest salary 
select max(salary) as highest_salary 
from employees;

--2.find second highest salary 
select max(salary) 
from employees
where salry<(select max(salary) from employees);

--3.count employees in each departments
select department, count(*) as total
from employees
group by department;

--4.find average salary per department
select department,avg(salary) as avg_salary
from employeees
group by department; 

--5.find employees with salary above average
select name,salary
from employees
where salary>(select avg(salary)from employees);

--6.find lowest salary
select min(salary) from employees;

--7.sort employees by salary (high to low)
select * from employees
order by salary desc;

--8.find employees whose name satart with "A"
select * from employees
where name like 'A%'

--count total employees;
select count(*) from employees;

--10.find department with highest average salary
select depsrtment,avg(salary)as avg_salary
from employees
group by departments
order by avg_salary desc
limit 1;