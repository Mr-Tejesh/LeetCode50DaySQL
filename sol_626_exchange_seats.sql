-- https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50
-- 626. Exchange Seats

select id, 
    case when id % 2 = 1 then coalesce(lead(student)over(order by id), student)
    else lag(student)over(order by id) end student
from Seat 