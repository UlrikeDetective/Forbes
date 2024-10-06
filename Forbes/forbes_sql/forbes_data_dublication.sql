Use Forbes;

SELECT ID, Person
FROM forbes_names
WHERE Country_of_residence = 'France';


SELECT distinct ID, Person
FROM forbes_names
WHERE Country_of_residence = 'France';


SELECT Country_of_residence, COUNT(DISTINCT ID) AS
unique_Country_count
FROM forbes_names
GROUP BY Country_of_residence;

SELECT ID, Person
FROM forbes_names
WHERE Country_of_residence = 'Germany';


SELECT distinct ID, Person
FROM forbes_names
WHERE Country_of_residence = 'Germany';
