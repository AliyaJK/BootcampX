SELECT t.name AS teacher_name, COUNT(*) AS total_assistance_requests
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;
