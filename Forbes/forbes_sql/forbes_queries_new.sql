Use Forbes;

SELECT forbes_names.Person, forbes_names.ID, forbes_names.Country_of_residence, forbes_2022.net_worth_in_BillionUSD_2022
FROM forbes_names
LEFT JOIN forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
ORDER BY forbes_2022.net_worth_in_BillionUSD_2022 DESC;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
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
    forbes_2024_08.net_worth_in_BillionUSD_2024_08
FROM
    forbes_names
	LEFT JOIN
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
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
	LEFT JOIN
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
	Left join 
	forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
     LEFT JOIN
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
	LEFT JOIN
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
ORDER BY forbes_2023.net_worth_in_BillionUSD_2023 DESC
LIMIT 20;

SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    forbes_names.Continent,
    forbes_names.Gender,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
	forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2024_06.net_worth_in_BillionUSD_2024_06,
    forbes_2024_07.net_worth_in_BillionUSD_2024_07,
    forbes_2024_08.net_worth_in_BillionUSD_2024_08
FROM
    forbes_names
    LEFT JOIN
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
    LEFT JOIN
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
    LEFT JOIN
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
     LEFT JOIN
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
	LEFT JOIN
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
	Left join 
	forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
     LEFT JOIN
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
	LEFT JOIN
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
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
    forbes_2021.net_worth_in_BillionUSD_2021,
    forbes_2022.net_worth_in_BillionUSD_2022,
    forbes_2023.net_worth_in_BillionUSD_2023,
    forbes_2024_01.net_worth_in_BillionUSD_2024_01,
    forbes_2024_02.net_worth_in_BillionUSD_2024_02,
    forbes_2024_03.net_worth_in_BillionUSD_2024_03,
    forbes_2024_04.net_worth_in_BillionUSD_2024_04,
    forbes_2024_05.net_worth_in_BillionUSD_2024_05,
    forbes_2021.Table_rank_2021,
	forbes_2022.Table_rank_2022,
    forbes_2023.Table_rank_2023,
    forbes_2024_01.Table_rank_2024_01,
    forbes_2024_02.Table_rank_2024_02,
    forbes_2024_03.Table_rank_2024_03,
    forbes_2024_04.Table_rank_2024_04,
    forbes_2024_05.Table_rank_2024_05
FROM
    forbes_names
            LEFT JOIN
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
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
        LEFT JOIN
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
    left join
    forbes_location on forbes_names.City = forbes_location.City
ORDER BY forbes_names.ID;

SELECT 
    forbes_names.Country_of_residence,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS total_net_worth
FROM 
    forbes_names
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
GROUP BY 
    forbes_names.Country_of_residence
ORDER BY 
    total_net_worth DESC;
    
SELECT 
    forbes_names.Country_of_residence,
	SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Country_of_residence
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Country_of_residence,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
	SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total,
	SUM(forbes_2024_06.net_worth_in_BillionUSD_2024_06) AS 2024_06_total,
    SUM(forbes_2024_07.net_worth_in_BillionUSD_2024_07) AS 2024_07_total,
	SUM(forbes_2024_08.net_worth_in_BillionUSD_2024_08) AS 2024_08_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
LEFT JOIN 
    forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
LEFT JOIN 
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
LEFT JOIN 
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
GROUP BY 
    forbes_names.Country_of_residence
ORDER BY 
    2024_01_total DESC;
    
SELECT 
    forbes_names.Continent,
	SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Continent
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Continent,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
    SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total,
	SUM(forbes_2024_06.net_worth_in_BillionUSD_2024_06) AS 2024_06_total,
    SUM(forbes_2024_07.net_worth_in_BillionUSD_2024_07) AS 2024_07_total,
    SUM(forbes_2024_08.net_worth_in_BillionUSD_2024_08) AS 2024_08_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
LEFT JOIN 
    forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
LEFT JOIN 
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
LEFT JOIN 
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
GROUP BY 
    forbes_names.Continent
ORDER BY 
    2024_01_total DESC;
    
SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
    SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence
ORDER BY 
    2024_01_total DESC;

SELECT 
    forbes_names.City,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.City
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.City,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
    SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total,
	SUM(forbes_2024_06.net_worth_in_BillionUSD_2024_06) AS 2024_06_total,
    SUM(forbes_2024_07.net_worth_in_BillionUSD_2024_07) AS 2024_07_total,
    SUM(forbes_2024_08.net_worth_in_BillionUSD_2024_08) AS 2024_08_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
LEFT JOIN 
    forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
LEFT JOIN 
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
LEFT JOIN 
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
GROUP BY 
    forbes_names.City
ORDER BY 
    2024_01_total DESC;

SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    forbes_names.City,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence, forbes_names.City
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    forbes_names.City,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
    SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total,
	SUM(forbes_2024_06.net_worth_in_BillionUSD_2024_06) AS 2024_06_total,
    SUM(forbes_2024_07.net_worth_in_BillionUSD_2024_07) AS 2024_07_total,
    SUM(forbes_2024_08.net_worth_in_BillionUSD_2024_08) AS 2024_08_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
LEFT JOIN 
    forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
LEFT JOIN 
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
LEFT JOIN 
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence, forbes_names.City
ORDER BY 
    2024_01_total DESC;

SELECT 
    forbes_names.Gender,
	SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Gender
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Gender,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total,
    SUM(forbes_2024_05.net_worth_in_BillionUSD_2024_05) AS 2024_05_total,
	SUM(forbes_2024_06.net_worth_in_BillionUSD_2024_06) AS 2024_06_total,
    SUM(forbes_2024_07.net_worth_in_BillionUSD_2024_07) AS 2024_07_total,
    SUM(forbes_2024_08.net_worth_in_BillionUSD_2024_08) AS 2024_08_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2024_01 ON forbes_names.ID = forbes_2024_01.USER_ID
LEFT JOIN 
    forbes_2024_02 ON forbes_names.ID = forbes_2024_02.USER_ID
LEFT JOIN 
    forbes_2024_03 ON forbes_names.ID = forbes_2024_03.USER_ID
LEFT JOIN 
    forbes_2024_04 ON forbes_names.ID = forbes_2024_04.USER_ID
LEFT JOIN 
    forbes_2024_05 ON forbes_names.ID = forbes_2024_05.USER_ID
LEFT JOIN 
    forbes_2024_06 ON forbes_names.ID = forbes_2024_06.USER_ID
LEFT JOIN 
    forbes_2024_07 ON forbes_names.ID = forbes_2024_07.USER_ID
LEFT JOIN 
    forbes_2024_08 ON forbes_names.ID = forbes_2024_08.USER_ID
GROUP BY 
    forbes_names.Gender
ORDER BY 
    2024_01_total DESC;

SELECT 
    forbes_names.Self_made,
	SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Self_made
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Business,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Business
ORDER BY 
    2021_total DESC;

SELECT 
    forbes_names.Industry,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Industry
ORDER BY 
    2021_total DESC;
    
SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
	SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS 2021_total,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
Where forbes_names.Person = 'Bill Gates';


SELECT 
    forbes_names.Person,
    forbes_names.ID,
    forbes_names.Country_of_residence,
    SUM(forbes_2021.net_worth_in_BillionUSD_2021) AS total_2021,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS total_2022,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS total_2023
FROM 
    forbes_names
LEFT JOIN 
    forbes_2021 ON forbes_names.ID = forbes_2021.USER_ID
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
WHERE 
    forbes_names.Person LIKE 'Steve%'
GROUP BY 
    forbes_names.Person, 
    forbes_names.ID, 
    forbes_names.Country_of_residence;

    
SELECT 
    forbes_2022.Person, forbes_2022.net_worth_in_BillionUSD_2022
FROM
    forbes_2022
        JOIN
    forbes_names ON forbes_2022.User_ID = forbes_names.ID;
