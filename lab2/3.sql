SELECT name, population, region
FROM cities 
WHERE population > 50000 AND region IN ('S', 'C', 'N');