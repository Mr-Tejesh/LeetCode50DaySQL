-- https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50
-- 595. Big Countries

select name, population, area from World
where area >=3000000 or population>=25000000;