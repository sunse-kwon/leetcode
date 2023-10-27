# Write your MySQL query statement below
# find the IDs of the users
# who visited without making any transactions && the number of times they made these types of visits.
# any order

select customer_id, sum(case when transaction_id is null then 1 else 0 end) as count_no_trans
from Visits left join Transactions on Visits.visit_id = Transactions.visit_id
where transaction_id is null
group by customer_id