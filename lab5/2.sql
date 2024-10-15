SELECT regions.name, COUNT(cities.id) AS city_count, SUM(cities.population) AS population_in_region
FROM cities
JOIN regions ON cities.region = regions.uuid
GROUP BY regions.name
HAVING city_count >= 10;
