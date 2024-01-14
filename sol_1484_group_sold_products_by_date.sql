-- https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan-v2&envId=top-sql-50
-- 1484. Group Sold Products By The Date

select sell_date, count(distinct product) as num_sold, GROUP_CONCAT(distinct product ORDER BY product) AS products
 from Activities
group by sell_date