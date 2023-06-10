SELECT a.day, COUNT(a.id) AS total_assignments, SUM(a.duration) AS total_duration
FROM assignments a
GROUP BY a.day
ORDER BY a.day;