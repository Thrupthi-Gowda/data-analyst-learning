--create table 
create table employees(
    id int,
    name varchar(50),
    department varchar(50),
    salary int
);

--insert data
insert into employees values(1,'alex','it',30000);
insert into employees values(2,'sara','hr',20000);
insert into employees values(3,'john','it',40000);
insert into employees values(4,'david','hr',25000);
insert into employees values(5,'emma','it',35000);

--view data
select * from employees;

--group by example
select department,count(*) as total_employees
from employees
group by department;

--sum salary by department
select department,sum(salary) as total_salary
from employees 
group by department;

--sum salary by department
select department, sum(salary) as total_salary
from employees
group by department;

--avg salary
select department, avg(salary) as avg_salary
from employees
group by department;

--having example (filter group)
select department,
sum(salary) as total_salary
from employees
group by department
having sum(Salary)>70000;

--count with having
select department, count(*) as emp_count
from employees
group by department 
having count(*)>2; 