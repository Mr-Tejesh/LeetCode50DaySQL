-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
-- 570. Managers with at Least 5 Direct Reports

select t1.name from Employee t1
join Employee t2 on t1.id=t2.managerId
group by t1.name, t1.id
having count(t2.managerId)>=5;