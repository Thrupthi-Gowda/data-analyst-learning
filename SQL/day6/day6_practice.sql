--day6 sql practice --topic:advanced join+conditions

--view tables 
select * from students;
select * from marks;

--join with where (filter after join)
select student.name,marks.marks 
from students
inner join marks
on students.id=marks.students_id 
where marks.marks>80; 

--inner join usig aliases
select s.name,m.marks
from students as s
inner join marks as m
on s.id = m.students_id;

select s.name,m.maeks
from students s
left join marks m
on s.id =m.students_id
where m.marks is null;

--group by with join
select s.name,count(m.marks) as total_records
from students s
left join marks m 
on s.id =m.students_id
group by s.name;

--students with average marks>80
select s.name,avg(m.marks) as avg_marks
from students select
inner join marks m
on s.id=m.students_id
group by s.name
having avg(m.marks)>80;

select s.name ,max(m.marks) as highest_marks
from students s
inner join marks m
on s.id = m.students_id
group by s.name;
