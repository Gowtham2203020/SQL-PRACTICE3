--Top 10 Most Populated Cities
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

--ountries Starting with 'A'
SELECT Name
FROM country
WHERE Name LIKE 'A%';

--Countries with More Than 5 Languages
SELECT COUNT(Language) AS LanguageCount, CountryCode
FROM countrylanguage
GROUP BY CountryCode
HAVING COUNT(Language) > 5
ORDER BY LanguageCount DESC;

--Cities with Country Names (Top 10 by Population)
SELECT city.Name AS CityName, country.Name AS CountryName
FROM city
INNER JOIN country ON city.CountryCode = country.Code
ORDER BY city.Population DESC
LIMIT 10;

--All City Details with Country Names
SELECT city.ID, city.Name, city.CountryCode, city.District, city.Population, country.Name AS CountryName
FROM city
INNER JOIN country ON city.CountryCode = country.Code;

--Average Population of Asia
SELECT Continent, AVG(Population) AS AveragePopulation
FROM country
GROUP BY Continent
HAVING Continent = 'Asia';

--Continents with Average Population > 5 Million
SELECT Continent, AVG(Population) AS AveragePopulation
FROM country
GROUP BY Continent
HAVING AveragePopulation > 5000000
ORDER BY AveragePopulation DESC;
