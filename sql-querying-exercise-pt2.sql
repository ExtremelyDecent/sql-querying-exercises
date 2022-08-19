--1
SELECT * FROM people
WHERE age > 50
ORDER BY age DESC;
--2
SELECT SUM(age) AS age_sum
FROM people;
--3
SELECT MIN(age) AS age_min, MAX(age) AS age_max
FROM people;
--4
SELECT
  *
FROM
  students
WHERE IsActive;
--5
SELECT age, COUNT(*) AS people_count
FROM people
GROUP BY age;
--6
SELECT age, COUNT(*) total_people
  FROM people
GROUP BY age
HAVING COUNT(*) >= 10;
--SQLZOO
--1
SELECT SUM(population)
FROM world;
--2
SELECT DISTINCT(continent)
FROM world;
--3
SELECT SUM(GDP)
FROM world
WHERE continent = 'Africa';
--4 
SELECT COUNT(name)
FROM world
WHERE area >= 1000000;
--5
SELECT SUM(population)
FROM world
WHERE name IN  ('Estonia', 'Latvia', 'Lithuania');
--6
SELECT continent, COUNT(name)
FROM world
GROUP BY continent;
--7
SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent;
--8
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;