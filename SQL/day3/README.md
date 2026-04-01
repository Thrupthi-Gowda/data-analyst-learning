# Day 3 – SQL Filtering Advanced

## What I Learned
Today I practiced more SQL filtering conditions to retrieve specific data from the table.

## Topics Covered
WHERE clause  
AND condition  
OR condition  
BETWEEN  
LIKE  
NOT  

## Practice Table
Student_day2

## Example Queries

View all students
SELECT * FROM Student_day2;

Students with marks greater than 85
SELECT * FROM Student_day2
WHERE marks > 85;

Students with marks between 70 and 90
SELECT * FROM Student_day2
WHERE marks BETWEEN 70 AND 90;

Students whose name starts with S
SELECT * FROM Student_day2
WHERE name LIKE 'S%';

Students whose name is not Tom
SELECT * FROM Student_day2
WHERE name NOT IN ('Tom');

## Tools Used
- MySQL
- Git
- GitHub
