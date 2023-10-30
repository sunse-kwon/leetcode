# Write your MySQL query statement below
# find the average time (average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run)
# each machine
# takes to complete a process.( the 'end' timestamp minus the 'start' timestamp.)
# any order

select A.machine_id, round(sum(B.timestamp - A.timestamp) / count(A.process_id),3) processing_time
from Activity A, Activity B
where A.machine_id = B.machine_id and A.process_id = B.process_id and A.activity_type = 'start' and B.activity_type = 'end'
group by A.machine_id