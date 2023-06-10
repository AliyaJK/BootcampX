SELECT SUM(asub.duration) AS total_duration
FROM assignment_submissions asub
JOIN students s ON s.id = asub.student_id
JOIN cohorts c ON c.id = s.cohort_id
WHERE c.name = 'FEB12';