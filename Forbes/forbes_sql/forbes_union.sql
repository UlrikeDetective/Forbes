Use Forbes;

SELECT Person, Net_worth_in_BillionUSD_2022 FROM forbes_2022
UNION
SELECT Person, Net_worth_in_BillionUSD_2023 FROM forbes_2023;

SELECT Person, Net_worth_in_BillionUSD_2024_07 FROM forbes_2024_07
UNION
SELECT Person, Net_worth_in_BillionUSD_2024_08 FROM forbes_2024_08;

SELECT Person, Net_worth_in_BillionUSD_2024_08 FROM forbes_2024_08
UNION
SELECT Person, Net_worth_in_BillionUSD_2024_09 FROM forbes_2024_09;
UNION
SELECT Person, Net_worth_in_BillionUSD_2024_10 FROM forbes_2024_10;
