-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
-- 1378. Replace Employee ID With The Unique Identifier

select eu.unique_id, e.name from Employees e
left join EmployeeUNI eu on e.id=eu.id;