SELECT t.fullname, sbj.name, ROUND(AVG(g.grade), 2) AS avg_grade
FROM grades g
JOIN subjects sbj ON g.subject_id = sbj.id 
JOIN teachers t ON sbj.teacher_id = t.id
group by sbj.id


