# Write your MySQL query statement below
# find the IDs of the invalid tweets
# invalid : if the number of characters used in the content of the tweet is strictly greater than 15
# any order
select tweet_id
from Tweets
where LENGTH(content) > 15