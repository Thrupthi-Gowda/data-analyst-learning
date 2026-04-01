--day4 sql practice
--Topics:count,sum,avg,min,max,group by

--view all the students

select * from student_day2;

--count the total number of students
select count(*) as total_student
 from student_day2;

--find total marks of all students
select sum(marks) as total_mark
 from student_day2;

--find  average marks of all student
select avg(marks) as average_mark
 from student_day2;

--find the highest marks
select max(marks) as highest_mark 
from student_day2;

--find the lowest marks
select min(marks) as lowest_mark
 from student_day2;

--group student by marks
select marks,count(*) as student_count
 from student_day2 
 group by marks;
  