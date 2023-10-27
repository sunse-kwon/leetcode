# Write your MySQL query statement below
# product_name, year, and price
# for each sale_id in the Sales table
# any order
select product_name, year, price
from Sales left join Product on Sales.product_id = Product.product_id