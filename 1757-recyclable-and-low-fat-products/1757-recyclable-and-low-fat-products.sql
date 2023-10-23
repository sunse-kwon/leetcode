# Write your MySQL query statement below
# find the ids of products
# both low fat and recyclable
# any order

select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'