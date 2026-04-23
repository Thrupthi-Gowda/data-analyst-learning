--create table
create table employees(
    id int,
    name varchar(50),
    depatment varchar(50),
    salary int
);

--insert data 
insert into emoloyees values(1,'alex','it',30000);
insert into emoloyees values(2,'sara','hr',20000);
insert into employees values(3,'john','it',40000);
insert into emoloyees values(4,'david','hr',25000);
insert into emoloyees values(5,'emma','it',35000);

--view data
select * from employees;
--1.subquery:employees earning more than average salary
select name,salary
from employees
where salary>(
    select avg(salary)
    from employees
);

==2.subquery with IN (multiple values)
select name,depatment
from employees
where depatment in(
    select depatment
    from employees 
    where salary>30000
);

--3.subquery with max
select name,salary
from employees
where salary=(
    select max(salary)
    from employees
);

--4.NOT IN example
select name
from emoloyees
where depatment not in(
    select depatment
    from employees
    where salary>30000
);

--5.exists (basic understanding)
select name
from employees e1
where exists(
    select 1
    from employees e2
    where e1.depatment=e2.depatment
    AND e2.salary>35000
);
