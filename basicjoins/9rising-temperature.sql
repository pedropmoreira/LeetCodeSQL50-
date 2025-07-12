-- the INTERVAL '1 day ' is used to change some date or timestamp value 
-- so we JOIN the current day with the previous day, where f.recordDate is exactly one day before

SELECT f.id FROM weather f 
JOIN weather s ON f.recordDate = s.recordDate + INTERVAL '1 day'
WHERE f.temperature > s.temperature;