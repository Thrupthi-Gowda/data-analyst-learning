--day15 sql practice -topic join+real Questions
--drop table exists
drop table if exists employees;
drop table if exists departments;

--create department table 
create table department(
    id int primary key,
    dept_name varchar(50)
);

--create employees table
create table employees(
    id int,
    name varchar(50),
    department_id int,
    salary int
);

--insert into department
insert into departments values (1,'HR');
insert into departments values (2.'IT');
insert into departments values (3,'sales');

--insert into employees
insert into employees values(1,'alex',1,40000);
insert into employees values(2,'tom',2,60000);
insert into employees values(3,'sara',2,50000);
insert into employees values(4,'john',Null,30000);

--1.INNER JOIN (employees with departments)
select employees.name ,departments.dept_name
from employees 
inner join departments
on employees.departments_id=department.id;

--2.left join (all employees)
select employees.name,departments.dept_name
from employees
left join departments
on employees.department_id=departments.id;

--3.employees with salary>45000
select name,salary
from employees
where salary>45000;

4.sort employees by salary(high to low)
select name,salary
from employees
order by salary desc;


--5.employees in IT departments
select employees.name
from employees
inner join departments
on employees.departments_id=departments.id
where department.dept_name='IT';



