SELECT students.fullname, grades.grade, grades.date_of
FROM students
JOIN groups ON groups.id = students.group_id
JOIN grades ON grades.student_id = students.id
JOIN subjects ON subjects.id = grades.subject_id
WHERE groups.id = ?
  AND subjects.id = ?
  AND grades.date_of = (
    SELECT MAX(date_of)
    FROM grades
    WHERE subject_id = subjects.id
  )