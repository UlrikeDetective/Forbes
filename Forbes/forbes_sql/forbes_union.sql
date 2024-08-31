Use Forbes;

SELECT Person, Net_worth_in_BillionUSD_2022 FROM forbes_2022
UNION
SELECT Person, Net_worth_in_BillionUSD_2023 FROM forbes_2023;