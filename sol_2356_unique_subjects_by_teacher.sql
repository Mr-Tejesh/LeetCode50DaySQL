-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50
-- 2356. Number of Unique Subjects Taught by Each Teacher

select teacher_id, count(distinct subject_id) as cnt from Teacher
group by teacher_id
order by teacher_id asc;