-- medium 
SELECT s.user_id , ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1.00 else 0.00 end) ,2) AS confirmation_rate
FROM signups s
LEFT JOIN confirmations c ON s.user_id = c.user_id 
GROUP BY s.user_id;