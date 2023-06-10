SELECT s.name AS student_name, AVG(asub.duration) AS average_completion_time
FROM students s
JOIN assignment_submissions asub ON s.id = asub.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_completion_time DESC;
