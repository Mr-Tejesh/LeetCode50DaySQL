-- https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50
-- 1527. Patients With a Condition

select * from Patients
where conditions like '% DIAB1%' or conditions like 'DIAB1%'