# Write your MySQL query statement below
# find the percentage of the users
# registered in each contest rounded to two decimals.
# ordered by percentage in descending order, tie, order by contest_id in ascending
with temp as (
select count(*) as total_user
from Users)

select contest_id, round((count(user_id)/total_user) * 100, 2) percentage
from Register A, temp
group by contest_id
order by percentage desc , contest_id asc