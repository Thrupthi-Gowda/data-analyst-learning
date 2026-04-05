--day8 sql practice--topic:constraints

--drop table if exists 
drop table if exists employees;

--create table with constraints 
create table employees (
    id int primary key,
    name varchar(50) not null,
    email varchar(100) unique,
    salary int default 30000
);

--insert data 
insert into employees (id,name,email,salary)
values (1,"alex",'alex@gmail.com',40000);

insert into employees(id,name,email)
values(2,"tom",'tom@gmail.com');  --salary will be default

--try duplicate primary key(will be error)
insert into employees values(1,'sam','sam@gmail.com',35000);

--try null name(will give error)
insert into employee values(3,null,'test@gmail.com',30000);

--try duplicate email(will give error)
insert into employees values(4,'sara','alex@gmail.com',28000);

-view table 
select * from employees;