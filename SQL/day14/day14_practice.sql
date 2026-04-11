--day 14 sql practice
--topic:alter +foreign key(easy)

--create student table
create table student(
    id int primary key,
    name varchar(50)
) 

--create marks table with foreign key
create table marks(
    student_id int,
    marks int,
    foreign key(student_id ) references students(id)

);
--insert data
insert into students values(1,'alex');
insert into students values(2,'tom');

insert into marks values(1,85);
insert into marks values(2,90);

--alter table examples
--add column 
alter table students add age int;

--modify column 
alter table students modify age float;

--drop column
alter table students drop column age;

--rename coumn 
alter table students change name full_name varchar(50);

--view tables
select * from students;
select * from marks;
 