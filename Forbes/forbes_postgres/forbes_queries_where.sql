\c forbes;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.Person = 'Bill Gates';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.Person LIKE 'Bill%'
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.Person LIKE 'Steve%'
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.Person LIKE 'Ulrike%';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.City,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.City LIKE 'Paris'
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.City,
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.City LIKE 'Leipzig'
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08,
    forbes_2024_09.net_worth_in_BillionUSD_2024_09,
    forbes_2024_10.net_worth_in_BillionUSD_2024_10
FROM
    forbes_names
    LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
    LEFT JOIN forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
    LEFT JOIN forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    LEFT JOIN forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
    LEFT JOIN forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
    LEFT JOIN forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
    LEFT JOIN forbes_2024_09 ON forbes_names.ID = forbes_2024_09.USER_ID
    LEFT JOIN forbes_2024_10 ON forbes_names.ID = forbes_2024_10.USER_ID
WHERE forbes_names.Country_of_residence = 'Germany';
