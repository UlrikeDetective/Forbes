\c forbes;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2022,
    CASE
        WHEN Net_worth_in_BillionUSD_2022 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2022 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2022;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2023,
    CASE
        WHEN Net_worth_in_BillionUSD_2023 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2023 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2023;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_01,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_01 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_01 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_01;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_02,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_02 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_02 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_02;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_03,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_03 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_03 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_03;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_04,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_04 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_04 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_04;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_05,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_05 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_05 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_05;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_06,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_06 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_06 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_06;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_07,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_07 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_07 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_07;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_08,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_08 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_08 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_08;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_09,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_09 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_09 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_09;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_10,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_10 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_10 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_10;

SELECT 
    Person,
    Net_worth_in_BillionUSD_2024_11,
    CASE
        WHEN Net_worth_in_BillionUSD_2024_11 > 50 THEN 'Very Wealthy'
        WHEN Net_worth_in_BillionUSD_2024_11 BETWEEN 20 AND 50 THEN 'Wealthy'
        ELSE 'Moderate'
    END AS Wealth_Status
FROM forbes_2024_11;
