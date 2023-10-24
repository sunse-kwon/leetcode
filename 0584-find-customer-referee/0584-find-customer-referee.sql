# Write your MySQL query statement below
# Find the names of the customer
# not referred by the customer with id = 2
# any order

select name
from Customer
where referee_id is null or referee_id != 2