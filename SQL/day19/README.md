# Day 19 – SQL JOIN + GROUP BY

## Overview
Learned how to combine multiple tables and summarize data.

## Topics Covered
- INNER JOIN
- GROUP BY
- COUNT()
- SUM()
- AVG()
- HAVING

## Description
JOIN is used to combine tables.
GROUP BY is used to summarize data.

## Key Learnings
- Use JOIN to connect tables
- Use GROUP BY to group data
- Use HAVING to filter grouped results

## Example
SELECT d.dept_name, COUNT(e.id)
FROM employees e
JOIN departments d
ON e.department_id = d.id
GROUP BY d.dept_name;

## Tools Used
- MySQL
