-- Insert data into students table
INSERT INTO students (student_id, student_name, course_id) VALUES
(1, 'Riya', 101),
(2, 'Amit', 102),
(3, 'Sneha', 103),
(4, 'Karan', NULL);

-- Insert data into courses table
INSERT INTO courses (course_id, course_name) VALUES
(101, 'SQL'),
(102, 'Python'),
(104, 'Java');
-- INNER JOIN: Shows only those students who are enrolled in a course
SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
INNER JOIN 
    courses
ON 
    students.course_id = courses.course_id;
-- LEFT JOIN: Shows all students and their courses (if any)
-- Students without a course will still appear with NULL as course_name
SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
LEFT JOIN 
    courses 
ON 
    students.course_id = courses.course_id;
-- RIGHT JOIN: Shows all courses and the students enrolled (if any)
-- Courses with no students will still appear with NULL as student_name
SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
RIGHT JOIN 
    courses 
ON 
    students.course_id = courses.course_id;
-- FULL OUTER JOIN (Simulated using UNION of LEFT and RIGHT JOINs)
-- Combines all records from both tables, showing matches and unmatched rows
SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
LEFT JOIN 
    courses 
ON 
    students.course_id = courses.course_id

UNION

SELECT 
    students.student_name,
    courses.course_name
FROM 
    students
RIGHT JOIN 
    courses 
ON 
    students.course_id = courses.course_id;
