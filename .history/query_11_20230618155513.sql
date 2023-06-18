SELECT students.fullname, teachers.fullname, ROUND(AVG(g.grade), 2) AS avg_grade
FROM subjects sbj
FULL JOIN teachers t ON sbj.teacher_id = t.id
FULL JOIN grades g ON g.subject_id = sbj.id 
FULL JOIN students s ON s.id = g.student_id
WHERE s.id = ? and t.id = ?

