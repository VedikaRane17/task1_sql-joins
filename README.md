# Internship Task 1: SQL JOIN Operations

This project is part of my internship, focusing on practicing and demonstrating SQL JOIN operations using MySQL Workbench.

## 📂 Files Included

- `join_queries.sql` – SQL file with INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN (simulated using UNION).
- `screenshots/` – Contains result screenshots for each JOIN query.
- `README.md` – This file, with details about the task and content.

## 🧠 What I Learned

- How to use different types of SQL JOINs to combine relational data
- How to simulate a FULL OUTER JOIN in MySQL using UNION
- Executing queries and viewing results in MySQL Workbench

## 📊 JOIN Queries Used

- `INNER JOIN` – shows only matched records between `students` and `courses`
- `LEFT JOIN` – shows all students, and their course if available
- `RIGHT JOIN` – shows all courses, and the students enrolled if any
- `FULL OUTER JOIN` – simulated by combining LEFT and RIGHT joins with `UNION`

## 🧾 Sample Query

```sql
SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
INNER JOIN 
    courses
ON 
    students.course_id = courses.course_id;
