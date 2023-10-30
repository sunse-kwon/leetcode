# Write your MySQL query statement below
# find the number of times 
# each student attended each exam
# ordered by student_id and subject_name

select Students.student_id, Students.student_name, Subjects.subject_name, count(Examinations.student_id) attended_exams
from Students join Subjects left join Examinations on Students.student_id = Examinations.student_id and Subjects.subject_name = Examinations.subject_name
group by Students.student_id, Subjects.subject_name
order by Students.student_id, Subjects.subject_name