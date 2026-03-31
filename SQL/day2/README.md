# Day 2 – SQL Filtering and Sorting

## Topics Covered
- SELECT specific columns
- WHERE clause
- Filtering data
- ORDER BY
- Sorting results
- LIMIT

## Practice Queries

View all students
SELECT * FROM Student_day2;

Select only name and marks
SELECT name, marks FROM Student_day2;

Students scoring above 80
SELECT * FROM Student_day2
WHERE marks > 80;

Sort students by marks
SELECT name, marks
FROM Student_day2
ORDER BY marks DESC;

Top 3 students
SELECT name, marks
FROM Student_day2
ORDER BY marks DESC
LIMIT 3;

## Tools Used
MySQL  
Git  
GitHub  
Command Prompt
