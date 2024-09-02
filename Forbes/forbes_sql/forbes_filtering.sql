Use Forbes;

SELECT User_ID, Person, Age_of_person_2022
FROM forbes_2022
WHERE Net_worth_in_BillionUSD_2022 > 75 AND Age_of_person_2022 < 50;

SELECT User_ID, Person, Age_of_person_2022
FROM forbes_2022
WHERE Net_worth_in_BillionUSD_2022 > 75 OR Age_of_person_2022 < 50;

SELECT Country_of_residence, COUNT(*) AS itemCount
FROM forbes_names
GROUP BY Country_of_residence
HAVING  itemCount > 25;

SELECT City COUNT(*) AS itemCount
FROM forbes_names
GROUP BY City
HAVING  itemCount > 15;
