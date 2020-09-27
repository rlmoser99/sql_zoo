-- Show name of countries that begin with 'Y'
SELECT name
FROM world
WHERE name LIKE 'Y%';

-- Show name of countries that end with 'y'
SELECT name
FROM world
WHERE name LIKE '%y';

-- Show name of countries that contain an 'x'
SELECT name
FROM world
WHERE name LIKE '%x%';

-- Show name of countries that end with 'land'
SELECT name
FROM world
WHERE name LIKE '%land';

-- Show name of countires that begin with 'C' and end with 'ia'
SELECT name
FROM world
WHERE name LIKE 'C%ia';

-- Show name of countries that contain 'oo'
SELECT name
FROM world
WHERE name LIKE '%oo%';

-- Show names of countries that have 3 'a'
SELECT name
FROM world
WHERE name LIKE '%A%A%A%';

-- Alphabetically list names of countries have have 't' as the second letter
SELECT name
FROM world
WHERE name LIKE '_t%'
ORDER BY name;

-- Find the countries that have two "o" characters separated by two others.
SELECT name
FROM world
WHERE name LIKE '%o__o%';

-- Find the countries that have exactly four characters.
SELECT name
FROM world
WHERE name LIKE '____';

-- Find the country where the name is the capital city.
SELECT name
FROM world
WHERE name = capital;

-- Find the country where the capital is the country plus "City".
SELECT name
FROM world
WHERE capital = concat(name, ' City');

-- Find the capital and the name where the capital includes the name of the country.
SELECT capital, name
FROM world
WHERE capital LIKE concat('%', name, '%');

-- Find the capital and the name where the capital is an extension of name of the country.
SELECT capital, name
FROM world
WHERE capital != name
  AND capital LIKE concat('%', name, '%');

-- Show the name and the extension where the capital is an extension of name of the country.
SELECT name,
  REPLACE(capital, name, '') AS Extension
FROM world
WHERE capital != name
  AND capital LIKE concat('%', name, '%');