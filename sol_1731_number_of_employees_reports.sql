-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
-- 1731. The Number of Employees Which Report to Each Employee

select e.employee_id, e.name, count(e1.reports_to) as reports_count, round(avg(e1.age)) as average_age from Employees e
join Employees e1 on e.employee_id = e1.reports_to
group by e.employee_id, e.name
order by e.employee_id asc;
