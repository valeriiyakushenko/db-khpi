SELECT regions.name, SUM(cities.population) AS population_in_region
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE cities.population > 300000
GROUP BY regions.name;