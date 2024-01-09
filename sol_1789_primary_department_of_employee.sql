-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
-- 1789. Primary Department for Each Employee

select employee_id,department_id from employee where primary_flag = 'Y'
union
select employee_id, department_id from employee group by employee_id having count(department_id) = 1;