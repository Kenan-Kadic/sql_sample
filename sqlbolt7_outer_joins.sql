-- Exercise 7 — Tasks

-- 1. Find the list of all buildings that have employees
SELECT DISTINCT buildings.building_name 
FROM buildings
INNER JOIN employees ON employees.building = buildings.building_name
WHERE employees.name IS NOT NULL;

-- 2. Find the list of all buildings and their capacity
SELECT * from buildings;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT buildings.building_name,
                employees.role
FROM buildings
LEFT JOIN employees ON employees.building = buildings.building_name;
