Use Forbes;

SELECT SUM(Net_worth_in_BillionUSD_2024_08) AS total_net_worth_2024_03
FROM forbes_2024_08;

SELECT SUM(Net_worth_in_BillionUSD_2024_03) AS total_net_worth_2024_03
FROM forbes_2024_03
Where Age_of_person_2024_03 = 60;

SELECT AVG(Net_worth_in_BillionUSD_2024_08) AS AVG_net_worth_2024_08
FROM forbes_2024_08;

SELECT COUNT(Net_worth_in_BillionUSD_2024_03) AS Count_net_worth_2024_03
FROM forbes_2024_03;

SELECT Max(Net_worth_in_BillionUSD_2024_03) AS max_net_worth_2024_03
FROM forbes_2024_03;

SELECT Min(Net_worth_in_BillionUSD_2024_03) AS min_net_worth_2024_03
FROM forbes_2024_03;

SELECT MAX(Net_worth_in_BillionUSD_2024_03) as highest_networth, MIN(Net_worth_in_BillionUSD_2024_03) as lowest_networth
FROM forbes_2024_03;

SELECT
COUNT(User_ID) AS number_of_UserID,
SUM(Net_worth_in_BillionUSD_2024_09) AS total_sum
FROM forbes_2024_09;

SELECT Count(city) as number_of_cities
FROM forbes_names;
