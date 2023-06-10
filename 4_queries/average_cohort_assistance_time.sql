SELECT c.name AS cohort_name, AVG(ar.completed_at - ar.started_at) AS average_assistance_request_time
FROM assistance_requests ar
JOIN students s ON s.id = ar.student_id
JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY average_assistance_request_time ASC;
