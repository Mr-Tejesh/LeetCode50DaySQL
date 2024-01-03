-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
-- 1661. Average Time of Process per Machine

select Activity.machine_id, round(avg(a.timestamp-Activity.timestamp),3) as processing_time from Activity
join activity a on Activity.machine_id = a.machine_id and activity.process_id = a.process_id
where Activity.activity_type = 'start' and a.activity_type='end'
group by machine_id;