Use Forbes;

SELECT
User_ID, Person, Net_worth_in_BillionUSD_2023,
CASE
WHEN Net_worth_in_BillionUSD_2023 < 5 THEN 'not so rich'
WHEN Net_worth_in_BillionUSD_2023 BETWEEN 5.1 AND 10 THEN 'rich'
WHEN Net_worth_in_BillionUSD_2023 BETWEEN 10.1 AND 50 THEN 'richter'
WHEN Net_worth_in_BillionUSD_2023 BETWEEN 50.1 AND 100 THEN 'very rich'
ELSE 'just crazy rich'
END AS Net_worth_in_BillionUSD_2023
From forbes_2023;
