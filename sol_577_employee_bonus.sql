-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
-- 577. Employee Bonus

select emp.name, b.bonus from Employee emp
left join bonus b on emp.empId  = b.empId
where b.bonus <1000 or b.bonus is null;