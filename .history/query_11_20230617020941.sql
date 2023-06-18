SELECT ROUND(AVG(g.grade), 2) AS avg_grade
FROM subjects sbj
FULL JOIN teachers t ON sbj.teacher_id = t.id
FULL JOIN grades g ON g.subject_id = sbj.id 
LEFT JOIN students s ON s.id = g.student_id
WHERE t.id = 5 and s.id = 15

