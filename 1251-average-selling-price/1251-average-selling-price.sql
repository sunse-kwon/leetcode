# Write your MySQL query statement below
# the average selling price (average_price should be rounded to 2 decimal places.)
# each product
# any order
select Prices.product_id, ifnull(round(sum(price * units) / sum(units),2),0) average_price
from Prices left join UnitsSold on Prices.product_id = UnitsSold.product_id and purchase_date between start_date and end_date
group by Prices.product_id
