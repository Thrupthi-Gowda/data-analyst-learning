--day 17 sql practice
--topic :having
--drop table if exists
drop table if exist employees;

--create table 
create table employees(
    id int,
    name varchar(50),
    department_id int,
    salary int
);

--insert data 
insert into employees values(1,'Alex',1,40000);
insert into employees values(2,'tom',2,60000);
insert into employees values(3,'sara',2,50000);
insert into employees values(4,'john',1,30000);
insert into employees values(5,'david',1,45000);

--1.Average salary per department
select department_id,
avg(salary) as avg_salary
from employees
group by department_id;


--2.Department with avg salary>45000
select department_id;
avg(salrary) as avg_salary
from employees
group by department_id
having avg(salary)>45000;


--3.count employees per department
select department_id,
count(*) as total
from employees
group by department_id

--4.department with more than 2 employees
select department_id,
count() as total 
from employees
group by department_id 
having count()>2;

