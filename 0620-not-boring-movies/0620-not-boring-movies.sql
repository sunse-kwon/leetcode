# Write your MySQL query statement below
# movies
# with an odd-numbered ID and a description that is not "boring"
# ordered by rating in descending order

select *
from Cinema
where id % 2 != 0 and description != "boring"
order by rating desc