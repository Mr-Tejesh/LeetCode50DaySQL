-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
-- 1633. Percentage of Users Attended a Contest

select  r.contest_id,round(count(r.user_id)*100/(select count(*) from Users),2) as percentage from Users u
join Register r on u.user_id = r.user_id
group by r.contest_id
order by percentage desc,r.contest_id asc;