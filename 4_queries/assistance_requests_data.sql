SELECT t.name AS teacher_name, s.name AS student_name, a.name AS assignment_name, 
       (ar.completed_at - ar.started_at) AS duration
FROM assistance_requests ar
JOIN teachers t ON t.id = ar.teacher_id
JOIN students s ON s.id = ar.student_id
LEFT JOIN assignments a ON a.id = ar.assignment_id
ORDER BY duration;
