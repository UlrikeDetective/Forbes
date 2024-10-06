Use Forbes;

SELECT User_ID, Person, Age_of_person_2023
FROM forbes_2023
WHERE Net_worth_in_BillionUSD_2023 > 75 AND Age_of_person_2023 < 50;

SELECT User_ID, Person, Age_of_person_2023
FROM forbes_2023
WHERE Net_worth_in_BillionUSD_2023 > 75 OR Age_of_person_2023 < 50;

SELECT Country_of_residence, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Country_of_residence
HAVING  itemCount > 25;

SELECT City COUNT(*) AS itemCount
FROM forbes_names
GROUP BY City
HAVING  itemCount > 15;
