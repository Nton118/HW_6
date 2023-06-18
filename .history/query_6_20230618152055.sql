SELECT students.fullname, groups.name as gr_name
FROM students 
JOIN groups  ON students.group_id = groups.id
WHERE groups.id = 6

