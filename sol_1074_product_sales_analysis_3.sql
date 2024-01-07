-- https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50
-- 1070. Product Sales Analysis III

SELECT product_id, MIN(year) as first_year, quantity,price
FROM Sales
GROUP BY product_id;

