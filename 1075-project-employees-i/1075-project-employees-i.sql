# Write your MySQL query statement below
# reports the average experience years all the employees 
# each project, 
# rounded to 2 digits
# any order

select project_id, round(avg(experience_years),2) average_years
from Project left join Employee on Project.employee_id = Employee.employee_id
group by project_id