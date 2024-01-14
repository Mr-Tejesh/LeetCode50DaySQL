-- https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
-- 176. Second Highest Salary

SELECT COALESCE(
    (SELECT DISTINCT Salary 
     FROM Employee 
     ORDER BY Salary desc 
     LIMIT 1 OFFSET 1),
    null
) AS SecondHighestSalary;
