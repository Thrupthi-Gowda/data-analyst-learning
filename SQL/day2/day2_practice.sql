-- Day 2 SQL Practice

USE practice;

-- View all data
SELECT * FROM Student_day2;

-- Select specific columns
SELECT name, marks
FROM Student_day2;

-- Filter students who scored more than 80
SELECT *
FROM Student_day2
WHERE marks > 80;

-- Sort students by highest marks
SELECT name, marks
FROM Student_day2
ORDER BY marks DESC;

-- Top 3 students
SELECT name, marks
FROM Student_day2
ORDER BY marks DESC
LIMIT 3;