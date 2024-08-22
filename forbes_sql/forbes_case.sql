Use Forbes;

SELECT
User_ID, Person, Net_worth_in_BillionUSD_2022,
CASE
WHEN Net_worth_in_BillionUSD_2022 < 5 THEN 'not so rich'
WHEN Net_worth_in_BillionUSD_2022 BETWEEN 5.1 AND 10 THEN 'rich'
WHEN Net_worth_in_BillionUSD_2022 BETWEEN 10.1 AND 50 THEN 'richter'
WHEN Net_worth_in_BillionUSD_2022 BETWEEN 50.1 AND 100 THEN 'very rich'
ELSE 'just crazy rich'
END AS Net_worth_in_BillionUSD_2022
From forbes_2022;