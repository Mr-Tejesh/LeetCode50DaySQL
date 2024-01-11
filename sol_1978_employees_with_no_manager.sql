-- https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50
-- 1978. Employees Whose Manager Left the Company

select employee_id from (select * from Employees
where salary<30000 and manager_id is not null) as a
where manager_id not in (select employee_id from Employees)
order by employee_id;