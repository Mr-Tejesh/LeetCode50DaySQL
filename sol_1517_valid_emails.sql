-- https://leetcode.com/problems/find-users-with-valid-e-mails/solutions/3849884/simple-solution-with-some-explanation/?envType=study-plan-v2&envId=top-sql-50
-- 1517. Find Users With Valid E-Mails

SELECT *
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$';