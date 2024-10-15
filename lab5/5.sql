SELECT cities.name, cities.population
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE regions.area_quantity <= 5
  AND (cities.population < 150000 OR cities.population > 500000);
