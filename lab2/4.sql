SELECT name, population, region 
FROM cities 
WHERE population BETWEEN 150000 AND 350000 
  AND region IN ('E', 'W', 'N') 
ORDER BY name 
LIMIT 20;
