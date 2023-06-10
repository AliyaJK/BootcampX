SELECT DISTINCT t.name AS instructor_name, c.name AS cohort_name
FROM assistance_requests ar
JOIN teachers t ON t.id = ar.teacher_id
JOIN students s ON s.id = ar.student_id
JOIN cohorts c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
ORDER BY t.name;