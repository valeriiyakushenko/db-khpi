SELECT name, LENGTH(name) AS name_length 
FROM cities 
WHERE LENGTH(name) NOT IN (8, 9, 10);