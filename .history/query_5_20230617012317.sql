SELECT teachers.fullname, subjects.name
FROM subjects 
join teachers  ON  subjects.teacher_id = teachers.id
WHERE teachers.id = 1
 

