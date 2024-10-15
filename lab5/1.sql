SELECT regions.name, SUM(cities.population) AS population_in_region
FROM cities
JOIN regions ON cities.region = regions.uuid
GROUP BY regions.name;