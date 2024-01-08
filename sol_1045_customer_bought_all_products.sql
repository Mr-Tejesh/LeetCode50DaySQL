-- https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50
-- 1045. Customers Who Bought All Products

SELECT customer_id
 FROM customer c
  GROUP BY customer_id
   HAVING count(distinct product_key)=(SELECT count(distinct product_key) 
    FROM product)