# Write your MySQL query statement below
# unique ID of each user
# If a user does not have a unique ID replace just show null
# any order

select B.unique_id, A.name
from Employees A left join EmployeeUNI B on A.id = B.id
