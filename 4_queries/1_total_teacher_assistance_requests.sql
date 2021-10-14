SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name AS teacher
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teacher

