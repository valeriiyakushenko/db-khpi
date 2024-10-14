SELECT name, population, region
FROM cities 
WHERE region IN ('E', 'W') 
ORDER BY population DESC;
