-- https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50
-- 1907. Count Salary Categories

SELECT 'Low Salary' as category, COUNT(account_id) as accounts_count
FROM Accounts
WHERE income<20000
UNION
SELECT 'Average Salary' as category, COUNT(*)
FROM Accounts
WHERE income>=20000 AND income<=50000
UNION
SELECT 'High Salary' as category, COUNT(*)
FROM Accounts
WHERE income>50000
