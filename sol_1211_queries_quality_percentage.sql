-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
-- 1211. Queries Quality and Percentage

SELECT QUERY_NAME, ROUND(AVG(RATING/POSITION), 2) AS QUALITY, ROUND(AVG(IF(RATING<3,1,0))*100, 2) AS POOR_QUERY_PERCENTAGE
FROM QUERIES
GROUP BY QUERY_NAME;