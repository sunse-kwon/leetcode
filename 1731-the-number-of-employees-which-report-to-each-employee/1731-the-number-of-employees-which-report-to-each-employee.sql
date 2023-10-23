# Write your MySQL query statement below
# employee - employee , unary relationship, one to many

# select  B.employee_id, B.name, count(B.reports_to) reports_count, round(avg(B.age)) average_age
# from Employees A  right join Employees B on A.employee_id = B.reports_to
# having reports_count >= 1 
# order by employee_id

select A.employee_id, A.name, count(B.employee_id) reports_count, round(avg(B.age)) average_age
from Employees A left join Employees B on A.employee_id = B.reports_to
group by A.employee_id
having reports_count >= 1
order by employee_id
