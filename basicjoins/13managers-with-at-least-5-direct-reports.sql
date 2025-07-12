--medium
SELECT e1.name FROM employee e1
JOIN employee e2 ON e1.id = e2.managerId
GROUP BY e1.name,e1.id
HAVING COUNT(*) >=5;
