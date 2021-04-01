-- ADDDATE
SELECT a.id
FROM WEATHER a
JOIN WEATHER b ON (a.recordDate = ADDDATE(b.recordDate,INTERVAL 1 DAY))
WHERE a.Temperature > b.Temperature

--SUBDATE
SELECT b.id
FROM WEATHER a
JOIN WEATHER b ON (a.recordDate = SUBDATE(b.recordDate,INTERVAL 1 DAY))
WHERE a.Temperature < b.Temperature
