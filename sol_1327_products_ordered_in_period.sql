-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50
-- 1327. List the Products Ordered in a Period

select p.product_name, sum(o.unit) as total_units from products p
join orders o on p.product_id = o.product_id
where month(o.order_date) = 02 and year(o.order_date)=2020
group by p.product_name
having total_units>=100;