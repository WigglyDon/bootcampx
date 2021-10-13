SELECT cohorts.name AS cohort_name, count(*) as total_students 
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY total_students;
