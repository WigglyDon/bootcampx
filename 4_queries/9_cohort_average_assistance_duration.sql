SELECT avg (total_assistance_time) as average_total_duration
FROM (
SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_assistance_time
) as total_durations;