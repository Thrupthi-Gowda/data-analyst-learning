--create departments table
create table departments(
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

--insert data into departments 
insert into departments values(1,'it');
insert into departments values(2,'hr');
insert into departments values(3,'finance');

--insert data into employees
insert into employees values(1,'alex',1,30000);
insert into employees values(2,'sara',2,20000);
insert into employees values(3,'john',1,40000);
insert into employees values(4,'david',2,25000);
insert into employees values(5,'emma',1,35000);

--view tables
select * from employees;
select * from departments;

--join + group by(count employees per department)
select d.dept_name,
count(e.id)as
total_employees
from employees e 
inner join departments d
on e.department_id=d.id
group by d.dept_name;

--total salary per department
select d.dept_name,
sum(e.salary) as total_salary
from employees e
inner join department d
on e.department_id=d.id
group by d.dept_name;
having sum(e.salary)>70000;

