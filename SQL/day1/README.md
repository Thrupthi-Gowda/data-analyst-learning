# Day 1 – SQL Basics

## What I Learned
Today I started my SQL learning journey. I practiced the basic SQL commands used to create and manage data in a database.

## Topics Covered
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT

## Practice Work
I created a sample database and a table called `students`.  
Then I inserted some sample records and retrieved the data using SELECT queries.

## Example Queries

Create Database
CREATE DATABASE practice;

Use Database
USE practice;

Create Table
CREATE TABLE students (
id INT,
name VARCHAR(50),
marks INT
);

Insert Data
INSERT INTO students VALUES (1, 'Alex', 85);
INSERT INTO students VALUES (2, 'Tom', 90);
INSERT INTO students VALUES (3, 'John', 78);

View Data
SELECT * FROM students;

## Tools Used
- MySQL
- Git
- GitHub
