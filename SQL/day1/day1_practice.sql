CREATE DATABASE practice;
USE practice;

CREATE TABLE students(
id int,
name varchar(50),
marks int
);

inaert into student values(1,'alex',85);
insert into student values(2,'tom',90);
insert into student values(3,'john',78);

select * from student;
select name from student;
select * from student where marks>80;
select * from student order by means desc;