-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
-- 1204. Last Person to Fit in the Bus

with cte as (select *, sum(weight) over (order by turn) as total_weight from Queue)
select person_name from cte
where total_weight<=1000
order by turn desc
limit 1;