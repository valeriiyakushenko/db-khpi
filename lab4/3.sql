SELECT region, SUM(population) AS population_in_region
FROM cities 
WHERE region IN ('C', 'S') 
GROUP BY region;
