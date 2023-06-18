SELECT gr.name, sbj.name, s.fullname, g.grade 
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
JOIN  groups gr ON s.group_id = gr.id
JOIN subjects sbj ON g.subject_id = sbj.id
WHERE sbj.id = ? AND  gr.id = ?
