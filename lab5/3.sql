SELECT cities.name, cities.population
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE regions.area_quantity >= 5
ORDER BY cities.population DESC
LIMIT 5 OFFSET 10;