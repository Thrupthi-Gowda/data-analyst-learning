# Day 20 – SQL Subqueries

## Overview
Learned how to use queries inside another query.

## Topics Covered
- Subquery
- IN
- NOT IN
- EXISTS
- AVG, MAX

## Description
A subquery is a query inside another SQL query.

## Key Learnings
- Subqueries help solve complex problems
- Inner query runs first
- Used with WHERE, IN, EXISTS

## Example
SELECT name FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

## Tools Used
- MySQL
