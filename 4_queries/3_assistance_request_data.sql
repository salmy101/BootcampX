-- SELECT student_id as student, teacher_id as teacher, assignment_id as assignment, (completed_at TIMESTAMP - started_at TIMESTAMP ) as duration
-- FROM assistance_requests 
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration


SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration; 