# Day 18 – SQL GROUP BY & HAVING

## Overview
Learned how to group data and apply conditions on grouped results.

## Topics Covered
- GROUP BY
- COUNT()
- SUM()
- AVG()
- HAVING

## Description
GROUP BY is used to group rows that have the same values.
HAVING is used to filter grouped data.

## Key Learnings
- GROUP BY combines similar data
- Aggregate functions are used with GROUP BY
- HAVING filters grouped results

## Example
SELECT department, COUNT(*) 
FROM employees
GROUP BY department;

## Tools Used
- MySQL
