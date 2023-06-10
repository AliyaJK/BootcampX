SELECT c.name AS cohort_name, COUNT(*) AS total_submissions
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions asub ON s.id = asub.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;
