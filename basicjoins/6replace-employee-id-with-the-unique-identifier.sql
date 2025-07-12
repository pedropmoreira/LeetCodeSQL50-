SELECT e.unique_id, em.name FROM employees em
LEFT JOIN employeeuni e ON em.id = e.id;