-- https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50
-- 619. Biggest Single Number

select if(count(num)=1,num,null) as num from MyNumbers
group by num
order by num desc
limit 1;
