SELECT cohorts.name as cohort, count(assignments_submissions.*) as total_submissions
FROM students
JOIN assignments_submissions ON assignments_submissions.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY total_submissions DESC;


