SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_duration DESC
