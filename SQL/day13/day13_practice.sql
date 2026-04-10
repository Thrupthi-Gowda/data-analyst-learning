-- Day 13 SQL Practice
-- Topic: FOREIGN KEY

-- Drop tables if exist
DROP TABLE IF EXISTS Marks;
DROP TABLE IF EXISTS Students;

-- Create Students table
CREATE TABLE Students (
id INT PRIMARY KEY,
name VARCHAR(50)
);

-- Create Marks table with FOREIGN KEY
CREATE TABLE Marks (
student_id INT,
marks INT,
FOREIGN KEY (student_id) REFERENCES Students(id)
);

-- Insert data into Students
INSERT INTO Students VALUES (1,'Alex');
INSERT INTO Students VALUES (2,'Tom');

-- Insert valid data into Marks
INSERT INTO Marks VALUES (1,85);
INSERT INTO Marks VALUES (2,90);

-- Try invalid insert (will fail)
-- INSERT INTO Marks VALUES (3,70);

-- View tables
SELECT * FROM Students;
SELECT * FROM Marks;