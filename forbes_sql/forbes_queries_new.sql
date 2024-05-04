Use Forbes_new;

SELECT forbes_names.Person, forbes_names.ID, forbes_2022.net_worth_in_BillionUSD_2022
FROM forbes_names
LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
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
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC
LIMIT 10;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_names.Continent,
    forbes_names.Gender,
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
ORDER BY forbes_names.ID;

SELECT 
    
    forbes_names.ID,
    forbes_names.Person,
    forbes_names.City,
    forbes_names.Country_of_residence,
    forbes_names.Continent,
    forbes_location.latitude,
    forbes_location.longitude,
    forbes_names.Citzenship,
    forbes_names.Gender,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
	forbes_2022.Table_rank_2022,
    forbes_2023.Table_rank_2023,
    forbes_2024_01.Table_rank_2024_01,
    forbes_2024_02.Table_rank_2024_02,
    forbes_2024_03.Table_rank_2024_03,
    forbes_2024_04.Table_rank_2024_04
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
    left join
    forbes_location on forbes_names.City = forbes_location.City
ORDER BY forbes_names.ID;