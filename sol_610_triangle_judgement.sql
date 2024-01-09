-- https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50
-- 610. Triangle Judgement

select x,y,z,if(greatest(x,y,z)>=least(x+y,y+z,z+x),'No','Yes') as triangle from triangle;