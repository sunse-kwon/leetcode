# Write your MySQL query statement below
# find the name, population, and area
# big countries -1.area of at least three million (i.e., 3000000 km2), or population of at least twenty-five million (i.e., 25000000
# any order

select name, population, area
from World
where area >= 3000000 or  population >= 25000000