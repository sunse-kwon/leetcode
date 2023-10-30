# Write your MySQL query statement below
# find all dates' Id 
# condition higher temperatures, compared to its previous dates (yesterday).
# any order
select A.id
from Weather A, Weather B
where datediff(A.recordDate, B.recordDate) = 1 and A.temperature > B.temperature