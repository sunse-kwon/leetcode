# Write your MySQL query statement below
# name and bonus amount
# each employee
# a bonus less than 1000
# any order
select name, bonus
from Employee left join Bonus on Employee.empId = Bonus.empId
where bonus < 1000 or bonus is null