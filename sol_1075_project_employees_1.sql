-- https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50
-- 1075. Project Employees I

select p.project_id,round(avg(emp.experience_years),2) as average_years from Project p
join Employee emp on p.employee_id = emp.employee_id
group by p.project_id;