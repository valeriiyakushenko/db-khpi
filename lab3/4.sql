SELECT name, population, 
       ROUND((population / 40000000) * 100, 2) AS population_percentage 
FROM cities 
ORDER BY population DESC 
LIMIT 10;
