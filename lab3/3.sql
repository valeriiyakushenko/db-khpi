SELECT CONCAT(name, ' (', region, ')') AS city_region, population 
FROM cities 
WHERE population > 100000 
ORDER BY name;