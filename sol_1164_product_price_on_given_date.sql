-- https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50
-- 1164. Product Price at a Given Date

with cte as (select *, rank() over (partition by product_id order by change_date desc) as exp from Products where change_date < '2019-08-17')
select product_id, new_price as price from cte where exp=1
union
select product_id,10 as Price from Products
where product_id not in (select product_id from cte) ;