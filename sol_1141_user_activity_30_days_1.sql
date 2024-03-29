-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
-- 1141. User Activity for the Past 30 Days I

select activity_date as day, count(distinct user_id) as active_users from Activity
where  datediff("2019-07-27",activity_date)<30 and activity_date < "2019-07-27"
group by activity_date;