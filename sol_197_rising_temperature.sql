-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
-- 197. Rising Temperature

SELECT
    weather.id AS 'Id'
FROM
    weather
        JOIN
    weather w ON DATEDIFF(weather.recordDate, w.recordDate) = 1
        AND weather.Temperature > w.Temperature
;