USE exam_james;
SELECT students.first_name, students.last_name, subjects.subject_name, subjects.level_of_entry, entries.date_taken
FROM entries
JOIN students ON entries.student_id = students.student_id
JOIN subjects ON entries.subject_id = subjects.subject_id
ORDER BY students.last_name;