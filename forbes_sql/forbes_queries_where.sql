Use Forbes;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
Where forbes_names.Person = 'Bill Gates';


SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
WHERE 
    forbes_names.Person LIKE 'Steve%';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.City,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
WHERE 
    forbes_names.City LIKE 'Paris';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
WHERE 
    forbes_names.Person LIKE '%Steve%' OR
    forbes_names.Person LIKE '%Bill%';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.State,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
Where forbes_names.State = 'California';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
Where forbes_names.Country_of_residence = 'Germany';

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.State, 
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04
FROM
    forbes_names
        LEFT JOIN
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
        LEFT JOIN
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
    LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
WHERE 
    forbes_names.Person LIKE '%William%' AND
    forbes_names.State = 'California';

