--Day27 sql practice
--Topic :Index

--Drop table 
Drop table if exists employees;

--Crete a table
crete table employees(
    id int,
    name varchar(50),
    email varchar(100),
    salary int
);

-- Insert data
INSERT INTO employees VALUES (1,'Alex','alex@gmail.com',40000);
INSERT INTO employees VALUES (2,'Tom','tom@gmail.com',30000);
INSERT INTO employees VALUES (3,'Sara','sara@gmail.com',50000);
INSERT INTO employees VALUES (4,'John','john@gmail.com',20000);

--Normal query (slow for big data)
select * from employees
where email='alex@gmail.com';

--Create index on email
create index idx_email
on employees(email);

--Query becomes faster
select * from employees
where email ='alex@gmail.com';

--show indexes
show index from employees;

--Drop index
drop index idx_email on employees;