# Write your MySQL query statement below
# find all the authors
# viewed at least one of their own articles
# sorted by id in ascending order

select distinct author_id id
from Views
where author_id = viewer_id
order by author_id 