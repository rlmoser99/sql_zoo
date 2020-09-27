-- Show population of Germany
SELECT population
FROM world
WHERE name = 'Germany';

-- Show name & population of specific countries
SELECT name, population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Show name & area of countries between two specific values
SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000;

-- Show the name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- Show the countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%united%';

-- A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

-- Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000
-- XOR population > 250000000; 
-- VS Code plugin does not like XOR

-- Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places. For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America';

