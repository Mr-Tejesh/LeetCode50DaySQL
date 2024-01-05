-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
-- 620. Not Boring Movies

select * from Cinema
where mod(id,2) !=0 and description != "boring"
order by rating desc