use practice;

-view all students
 SELECT * FROM student_day2;

-students with marks greater than 80 
SELECT * FROM student_day2 WHERE marks>80;

-student with marks greater than 70 AND name Tom 
SELECT *FROM student_day2 WHERE marks>70 AND name='Tom';

-students with name Alex OR sara
SELECT * FROM student_day2 WHERE name='Alex' OR name="sara";

-student with marks between 70 and 90
SELECT * FROM student_day2 WHERE marks BETWEEN 70 AND 90;

-student whose name starts with S
SELECT * FROM student_day2 WHERE name LIKE 'S%';

-student whose name ends with n 
SELECT * FROM student_day2 WHERE name LIKE '%n';

-student not scoring below 80 
SELECT * FROM student_day2 WHERE NOT marks<80;

-sort student by marks 
SELECT name, marks FROM student_day2 ORDER BY marks DESC;
