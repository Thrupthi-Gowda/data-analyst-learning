--day7 practice subquery
--view table 
select * from students_day2;

--subquery with avg(student above avarege marks)
select name,marks
from students_day2
where marks>(
    select avg(marks)
    from students_day2
);

--subquery with in 
select name
from student_day2
where id IN(
    select id
    from student_day2
    where marks>80

);

--subquery with max 
select name,marks
from students_day2
where marks =(
    select max(marks)
    from students_day2
);

--subquery with min
select name,marks
from students_day2
where marks =(
    select min(marks)
    from students_day2
);

