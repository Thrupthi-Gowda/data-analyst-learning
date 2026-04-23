--day 21 sql full revision
--covers day 1 to day20 concepts
--drop tables if exist
drop table if exists marks;
drop table if exists employees;
drop table if exists departments;
drop table if exists students;

--1.create table (students)
create table students(
    id int primary key,
    name varchar(50)
);

--2.insert 
insert into students values(1,'alex');
insert into students values(2,'Tom');
insert into students values(3,'sara');

--3.select
select * from students;

--4.where
select * from students 
where id=1;

--5.update
update students
set name='alexander'
where id =1;

--6.delete 
delete from students 
where id=3;

--7.alter table
alter table students add age int;

--8.create departments table
create table departments(
    id int primary key,
    dept_name varchar(50)
);

--9.create employees table with forign key
create table employees(
    id int primary key,
    name varchar(50)
    department_id int,
    salary int,
    foreign key (department_id) references
    departments(id)
);

--10.insert into departments
insert into departments values(1,'it');
insert into departments values(2,'hr');

--11.insert into employees
insert into employees values(1,'alex',1,40000);
insert into employees values(2,'tom',2,30000);
insert into employees values(3,'sara',1,50000);
insert into employees values(4,'john',2,25000);
insert into employees values(5,'david',1,45000);

--12.inner join 
select e.name,d.dept_name
from employees e
inner join departments d
on e.department_id=d.id;

--13.left join
select e.name,d.dept_name
from employees e
left join departments d 
on e.department_id=d.id;

--14.group by + count
select department_id,count(*) as 
total_employees
from employees
group by department_id;

--15.group btotaly + avg
select department_id,avg(Salary) as avg_salary
from employees
group by department_id;

--16.having
select department_id,count() as total
from employees
group by department_id;
having count()>2;

--17.order by
select * from emplyees
order by salary desc;

--18.limit
select * from employees
limit 3;

--19.like
select * from students
where name like 'A%';

--20.in
select * from employees
where department_id in(1,2);

--21.subqueryes(above average salary)
select name,salary
from employees
where salary>(
    select avg(salary from employees)
);

