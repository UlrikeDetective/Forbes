\c forbes;

SELECT Country_of_residence, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Country_of_residence
ORDER BY itemCount DESC;

SELECT City, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY City
ORDER BY itemCount DESC;

SELECT Citizenship, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Citizenship
ORDER BY itemCount DESC;

SELECT Gender, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Gender
ORDER BY itemCount DESC;

SELECT Industry, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Industry
ORDER BY itemCount DESC;

SELECT Continent, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Continent
ORDER BY itemCount DESC;
