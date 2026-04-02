--day5 SQL practice-topic:join(inner join,left join,right join)

--create students table
create table students(id INT,name VARCHAR(50));

--insert data into students 
insert into students values (1,"Alex");
insert into students values (2,"tom");
insert into students values (3,"sara");

--create ,arks table 
create table marks (student_id INT,marks INT);

--insert a data into marks 
insert into students values (1,85);
insert into students values (2,90);
insert into students values (4,70);

--view students table 
select * from students;

--view marks table;
select * from marks;

--inner join (only matching records)
select students.name , marks.marks 
from students inner join marks 
on student.id = marks.student_id;

--left join(all students,even without marks)
select students.name , marks.marks
from students left join marks
on student.id = mark.student_id;

--right join(all students,evenc without marks)
select students.nmae , marks.marks
from students right join marks
on student.id = mark.student_id;
