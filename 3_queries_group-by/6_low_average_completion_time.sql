SELECT students.name AS student, 
  AVG(assignment_submissions.duration) AS average_duration,
  AVG(assignments.duration) AS average_estimated
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_duration ASC
