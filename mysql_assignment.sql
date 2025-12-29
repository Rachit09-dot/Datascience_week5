-- Create Table 1: students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(30)
);

-- Insert data
INSERT INTO students VALUES
(1, 'Rohit', 20, 'CSE'),
(2, 'Neha', 21, 'ECE'),
(3, 'Amit', 19, 'CSE'),
(4, 'Riya', 22, 'ME'),
(5, 'Kunal', 20, 'ECE');

-- Create Table 2: marks
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    marks INT
);

-- Insert data
INSERT INTO marks VALUES
(101, 1, 'Maths', 85),
(102, 1, 'DBMS', 78),
(103, 2, 'Maths', 92),
(104, 3, 'DBMS', 67),
(105, 4, 'Maths', 74),
(106, 5, 'DBMS', 81);


-- Students from CSE AND age > 19
SELECT * FROM students
WHERE department = 'CSE' AND age > 19;

-- Students from CSE OR ECE
SELECT * FROM students
WHERE department = 'CSE' OR department = 'ECE';

-- Students NOT from CSE
SELECT * FROM students
WHERE NOT department = 'CSE';


-- Total marks of all students
SELECT SUM(marks) AS total_marks FROM marks;

-- Average marks
SELECT AVG(marks) AS average_marks FROM marks;

-- Count number of students
SELECT COUNT(student_id) AS total_students FROM students;

-- Average marks per student
SELECT student_id, AVG(marks) AS avg_marks
FROM marks
GROUP BY student_id;


-- Order students by age ascending
SELECT * FROM students
ORDER BY age ASC;

-- Order marks by marks descending
SELECT * FROM marks
ORDER BY marks DESC;


-- Join students and marks
SELECT s.name, s.department, m.subject, m.marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id;

