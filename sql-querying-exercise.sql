--PART 1

--Select Basics
--1
SELECT population FROM world
  WHERE name = 'Germany';
--2

SELECT name, population FROM world
  WHERE name IN ( 'Sweden', 'Norway', 'Denmark');

--3
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

--Select Names
--1
SELECT name FROM world
  WHERE name LIKE 'Y%';
--2
SELECT name FROM world
  WHERE name LIKE '%y';
--3
SELECT name FROM world
  WHERE name LIKE '%x%';

--4
SELECT name FROM world
  WHERE name LIKE '%land';
--5
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE'%ia';
--6
SELECT name FROM world
  WHERE name LIKE '%oo%';
--7
SELECT name FROM world
  WHERE LOWER(name) LIKE '%a%a%a%';
--8
SELECT name FROM world
 WHERE name LIKE '_n%';

--9
SELECT name FROM world
 WHERE name LIKE '%o__o%';
--10
SELECT name FROM world
 WHERE name LIKE '____';
--11
SELECT name
  FROM world
 WHERE capital LIKE name;
--12
SELECT name
  FROM world
 WHERE capital  like CONCAT(name, ' City');
--13
SELECT capital, name 
 FROM world 
WHERE capital LIKE CONCAT('%', name, '%');
--14
SELECT capital, name
 FROM world 
WHERE capital LIKE CONCAT('%', name, '%') AND capital > name;
--15
SELECT name, REPLACE(capital, name, '') AS extension
 FROM world 
WHERE capital LIKE CONCAT('%', name, '%') AND capital > name;

--SELECT from WORLD Tutorial

--1
SELECT name, continent, population FROM world;
--2
SELECT name FROM world
WHERE population >  200000000;
--3
SELECT name,GDP/population AS "GDP per capita"
FROM world
WHERE population> 200000000;

--4
SELECT name, population/1000000 AS "Pop. per mil"
FROM world
WHERE continent = 'South America';

--5
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

--6
SELECT name
FROM world
WHERE name LIKE '%United%';

--7
SELECT name, population, area
FROM world
WHERE population > 250000000 OR area > 3000000;
--8
SELECT name, population, area
FROM world
WHERE ((population > 250000000) OR (area > 3000000)) AND NOT ((population > 250000000) AND (area > 3000000));

--9
SELECT name, ROUND(population/1000000,2) AS 'Pop per mil.', ROUND(GDP/1000000000,2) AS 'GDP per bil.'
FROM world
WHERE continent = 'South America';
--10
SELECT name, ROUND(GDP/population,-3) AS 'GDP per capita'
FROM world
where GDP > 1000000000000;
--11
SELECT name, capital, LEN(capital) AS 'Length'
  FROM world
 WHERE LEN(name) = LEN(capital);

--12
SELECT name, capital
FROM world
WHERE  (LEFT(name,1) = LEFT(capital,1)) AND (name <> capital);
--13
SELECT name
   FROM world
WHERE LOWER(name) LIKE '%a%'
  AND LOWER(name) LIKE '%e%'
  AND LOWER(name) LIKE '%i%'
  AND LOWER(name) LIKE '%o%'
  AND LOWER(name) LIKE '%u%'
AND name NOT LIKE '% %';

--SELECT from Nobel Tutorial

--1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

--2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature';
--3 
SELECT  yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';
--4
SELECT winner
FROM nobel
WHERE (subject = 'peace') AND yr >= 2000;
--5
SELECT yr, subject, winner
FROM nobel
WHERE yr >= 1980 AND yr <=1989 AND subject = 'literature';
--6
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama');
--7
SELECT winner FROM nobel
WHERE winner LIKE 'John%';
--8
SELECT yr, subject, winner
FROM nobel
WHERE (yr = 1980 AND subject = 'physics') OR (yr = 1984 AND subject = 'chemistry')
--9
SELECT * FROM nobel
WHERE yr = 1980 AND NOT (subject = 'chemistry' OR  subject = 'medicine');
--10
SELECT yr, subject, winner FROM nobel
WHERE (subject = 'medicine' AND yr < 1910) OR (subject = 'literature' AND yr >= 2004);
--11
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';
--12
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';
--13
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner ASC;
--14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984 
 ORDER BY 
CASE WHEN subject IN ('physics','chemistry') THEN 1 ELSE 0 END, subject, winner;
