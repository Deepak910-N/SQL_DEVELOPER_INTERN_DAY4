USE db;

SELECT course, SUM(marks) AS total_marks
FROM Students
GROUP BY course;

SELECT course, AVG(marks) AS average_marks
FROM Students
GROUP BY course;

SELECT course, COUNT(*) AS total_students
FROM Students
GROUP BY course;

SELECT course, MAX(marks) AS highest_marks
FROM Students
GROUP BY course;

SELECT course, MIN(marks) AS lowest_marks
FROM Students
GROUP BY course;

SELECT age, COUNT(*) AS num_students
FROM Students
GROUP BY age
ORDER BY num_students DESC;

SELECT age, SUM(marks) AS total_marks, AVG(marks) AS avg_marks
FROM Students
GROUP BY age;

SELECT course, COUNT(*) AS student_count
FROM Students
GROUP BY course
HAVING COUNT(*) > 2;

SELECT course, AVG(marks) AS avg_marks
FROM Students
WHERE course IN ('Physics', 'Mathematics')
GROUP BY course;
