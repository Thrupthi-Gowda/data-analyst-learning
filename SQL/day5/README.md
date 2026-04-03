# Day 5 – SQL Joins

## Overview
On Day 5, I learned how to combine data from multiple tables using SQL JOIN operations. Joins are essential for working with relational databases and are widely used in real-world data analysis.

## Topics Covered
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

## Tables Used

### Students
- id
- name

### Marks
- student_id
- marks

## SQL Queries Practiced

View Students table
SELECT * FROM Students;

View Marks table
SELECT * FROM Marks;

INNER JOIN (only matching records)
SELECT Students.name, Marks.marks
FROM Students
INNER JOIN Marks
ON Students.id = Marks.student_id;

LEFT JOIN (all students, even without marks)
SELECT Students.name, Marks.marks
FROM Students
LEFT JOIN Marks
ON Students.id = Marks.student_id;

RIGHT JOIN (all marks, even without matching student)
SELECT Students.name, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.id = Marks.student_id;

## Key Learnings
- JOIN is used to combine data from multiple tables.
- INNER JOIN returns only matching records.
- LEFT JOIN returns all records from the left table.
- RIGHT JOIN returns all records from the right table.

## Tools Used
- MySQL
- Git
- GitHub

## Learning Progress
