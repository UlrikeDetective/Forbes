Use Forbes_new;

SELECT forbes_names.Person, forbes_names.ID, forbes_names.Country_of_residence, forbes_2022.net_worth_in_BillionUSD_2022
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
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total
FROM 
    forbes_names
LEFT JOIN 
    forbes_2022 ON forbes_names.ID = forbes_2022.USER_ID
LEFT JOIN 
    forbes_2023 ON forbes_names.ID = forbes_2023.USER_ID
GROUP BY 
    forbes_names.Country_of_residence
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Country_of_residence,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Country_of_residence
ORDER BY 
    2022_total DESC;
    
SELECT 
    forbes_names.Continent,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Continent
ORDER BY 
    2022_total DESC;


SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.City,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.City
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Continent,
    forbes_names.Country_of_residence,
    forbes_names.City,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Continent, forbes_names.Country_of_residence, forbes_names.City
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Gender,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Gender
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Self_made,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Self_made
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Business,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Business
ORDER BY 
    2022_total DESC;

SELECT 
    forbes_names.Industry,
    SUM(forbes_2022.net_worth_in_BillionUSD_2022) AS 2022_total,
    SUM(forbes_2023.net_worth_in_BillionUSD_2023) AS 2023_total,
    SUM(forbes_2024_01.net_worth_in_BillionUSD_2024_01) AS 2024_01_total,
    SUM(forbes_2024_02.net_worth_in_BillionUSD_2024_02) AS 2024_02_total,
    SUM(forbes_2024_03.net_worth_in_BillionUSD_2024_03) AS 2024_03_total,
    SUM(forbes_2024_04.net_worth_in_BillionUSD_2024_04) AS 2024_04_total
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
GROUP BY 
    forbes_names.Industry
ORDER BY 
    2022_total DESC;
    
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
