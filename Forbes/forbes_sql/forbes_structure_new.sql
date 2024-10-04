Create database Forbes;
Use Forbes;
-- Drop database Forbes_new;

SET GLOBAL local_infile = 'ON';
SHOW VARIABLES LIKE 'local_infile';
SHOW VARIABLES LIKE "secure_file_priv";

-- drop table forbes_names; 

CREATE TABLE forbes_names (
    Person VARCHAR(150) NOT NULL UNIQUE,
    ID INT UNIQUE,
    Business VARCHAR(100),
    Industry VARCHAR(100),
    Gender VARCHAR(25),
    City VARCHAR(100),
    State VARCHAR(100),
    Country_of_residence VARCHAR(50),
    Continent VARCHAR(50),
    Citzenship VARCHAR(50),
    Self_made VARCHAR(10),
    PRIMARY KEY (ID),
    INDEX (City)
);

-- ALTER TABLE forbes_names
-- DROP COLUMN Source2;

Show columns from forbes_names;

-- drop table forbes_2021;

CREATE TABLE forbes_2021 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2021 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2021 DECIMAL(8, 2),
    Age_of_person_2021 INT,
    date_of_year INT,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2022;

CREATE TABLE forbes_2022 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2022 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2022 DECIMAL(8, 2),
    Age_of_person_2022 INT,
    date_of_year year,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2023;

CREATE TABLE forbes_2023 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2023 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2023 DECIMAL(8, 2),
    Age_of_person_2023 INT,
    date_of_year year,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_01;

CREATE TABLE forbes_2024_01 (
    ID INT PRIMARY KEY, -- The primary key should be set first
    User_ID INT UNIQUE, -- Make sure this matches the referenced column type in forbes_names
    Table_rank_2024_01 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE, -- Ensure uniqueness in 'Person' values
    Net_worth_in_BillionUSD_2024_01 DECIMAL(8, 2), -- Adjust precision if needed
    Age_of_person_2024_01 INT,
    Date_of_data DATE, -- Ensure your CSV uses 'yyyy-mm-dd' format
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID) -- Ensure referenced ID type and attributes match
);

-- drop table forbes_2024_02;

CREATE TABLE forbes_2024_02 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_02 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_02 DECIMAL(8, 2),
    Age_of_person_2024_02 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- Drop table forbes_2024_03;

CREATE TABLE forbes_2024_03 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_03 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_03 DECIMAL(8, 2),
    Age_of_person_2024_03 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_04;

CREATE TABLE forbes_2024_04 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_04 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_04 DECIMAL(8, 2),
    Age_of_person_2024_04 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_05;

CREATE TABLE forbes_2024_05 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_05 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_05 DECIMAL(8, 2),
    Age_of_person_2024_05 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_06;

CREATE TABLE forbes_2024_06 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_06 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_06 DECIMAL(8, 2),
    Age_of_person_2024_06 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_07;

CREATE TABLE forbes_2024_07 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_07 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_07 DECIMAL(8, 2),
    Age_of_person_2024_07 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- drop table forbes_2024_08;

CREATE TABLE forbes_2024_08 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_08 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_08 DECIMAL(8, 2),
    Age_of_person_2024_08 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

CREATE TABLE forbes_2024_09 (
    ID INT PRIMARY KEY,
    User_ID INT UNIQUE,
    Table_rank_2024_09 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_09 DECIMAL(8, 2),
    Age_of_person_2024_09 INT,
    Date_of_data Date,
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

drop table forbes_location;

CREATE TABLE forbes_location (
	ID_location int,
    City VARCHAR(100),
    US_State VARCHAR(100),
    Country varchar(100),
    Continent varchar(100),
    latitude DECIMAL(22, 19),
    longitude DECIMAL(22, 19),
    PRIMARY KEY (ID_location),
    FOREIGN KEY (City) REFERENCES forbes_names (City)
);

CREATE TABLE forbes_employees (
	rang int Primary Key,
    organizationName VARCHAR(100),
    industry VARCHAR(255),
    country varchar(100),
    employees int
);

drop table forbes_companies;
CREATE TABLE forbes_companies (
	rang int Primary Key,
    organizationName VARCHAR(200),
    country varchar(100),
    revenue_USD_in_mio real,
    profits_USD_in_mio real,
    assets_USD_in_mio real,
    marketValue_USD_in_mio real
);

LOAD DATA Local INFILE '/path_to_file/forbes_names.csv'
INTO TABLE forbes_names
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  -- This skips the header row if it's present in the CSV

select * from forbes_names limit 10;
SELECT * FROM forbes_names WHERE Person = 'Bruce Springsteen';

LOAD DATA Local INFILE '/path_to_file/forbes_2021.csv'
INTO TABLE forbes_2021
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2021, Person, @Net_worth_in_BillionUSD_2021, Age_of_person_2021, date_of_year)
SET Net_worth_in_BillionUSD_2021 = REPLACE(@Net_worth_in_BillionUSD_2021, ',', '.');

Select * from forbes_2021 Limit 15;

LOAD DATA Local INFILE '/path_to_file/forbes_2022.csv'
INTO TABLE forbes_2022
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2022, Person, @Net_worth_in_BillionUSD_2022, Age_of_person_2022, date_of_year)
SET Net_worth_in_BillionUSD_2022 = REPLACE(@Net_worth_in_BillionUSD_2022, ',', '.');

Select * from forbes_2022 Limit 15;

LOAD DATA Local INFILE '/path_to_file/forbes_2023.csv'
INTO TABLE forbes_2023
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2023, Person, @Net_worth_in_BillionUSD_2023, Age_of_person_2023, date_of_year)
SET Net_worth_in_BillionUSD_2023 = REPLACE(@Net_worth_in_BillionUSD_2023, ',', '.');

Select * from forbes_2023 Limit 15;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_01.csv'
INTO TABLE forbes_2024_01
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_01, Person, @Net_worth_in_BillionUSD_2024_01, Age_of_person_2024_01, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_01 = REPLACE(@Net_worth_in_BillionUSD_2024_01, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');


Select * from forbes_2024_01 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_02.csv'
INTO TABLE forbes_2024_02
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_02, Person, @Net_worth_in_BillionUSD_2024_02, Age_of_person_2024_02, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_02 = REPLACE(@Net_worth_in_BillionUSD_2024_02, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_02 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_03.csv'
INTO TABLE forbes_2024_03
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_03, Person, @Net_worth_in_BillionUSD_2024_03, Age_of_person_2024_03, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_03 = REPLACE(@Net_worth_in_BillionUSD_2024_03, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_03 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_04.csv'
INTO TABLE forbes_2024_04
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_04, Person, @Net_worth_in_BillionUSD_2024_04, Age_of_person_2024_04, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_04 = REPLACE(@Net_worth_in_BillionUSD_2024_04, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_04 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_05.csv'
INTO TABLE forbes_2024_05
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_05, Person, @Net_worth_in_BillionUSD_2024_05, Age_of_person_2024_05, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_05 = REPLACE(@Net_worth_in_BillionUSD_2024_05, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_05 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_06.csv'
INTO TABLE forbes_2024_06
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_06, Person, @Net_worth_in_BillionUSD_2024_06, Age_of_person_2024_06, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_06 = REPLACE(@Net_worth_in_BillionUSD_2024_06, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_06 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_07.csv'
INTO TABLE forbes_2024_07
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_07, Person, @Net_worth_in_BillionUSD_2024_07, Age_of_person_2024_07, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_07 = REPLACE(@Net_worth_in_BillionUSD_2024_07, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_07 Limit 5;

LOAD DATA LOCAL INFILE '/path_to_file/forbes_2024_08.csv'
INTO TABLE forbes_2024_08
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_08, Person, @Net_worth_in_BillionUSD_2024_08, Age_of_person_2024_08, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_08 = REPLACE(@Net_worth_in_BillionUSD_2024_08, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_08 Limit 5;

LOAD DATA LOCAL INFILE '/path to file/forbes_2024_09.csv'
INTO TABLE forbes_2024_09
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_09, Person, @Net_worth_in_BillionUSD_2024_09, Age_of_person_2024_09, @Date_of_data)
SET Net_worth_in_BillionUSD_2024_09 = REPLACE(@Net_worth_in_BillionUSD_2024_09, ',', '.'),
    Date_of_data = STR_TO_DATE(@Date_of_data, '%Y-%m-%d');

Select * from forbes_2024_09 Limit 5;


LOAD DATA Local INFILE '/path_to_file/forbes_data_with_coordinates2.csv'
INTO TABLE forbes_location
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID_location, City, US_State, Country, Continent, latitude, longitude)
;

Select * from forbes_location Limit 15;
Select * from forbes_location;

LOAD DATA Local INFILE '/forbes_employees_2024.csv'
INTO TABLE forbes_employees
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(rang, organizationName, industry, country, employees)
;

Select * from forbes_employees Limit 15;

DELETE FROM forbes_employees
ORDER BY rang ASC
LIMIT 1;

Select * from forbes_employees Limit 15;

LOAD DATA LOCAL INFILE 'Forbes_companies_mio_2024.csv'
INTO TABLE forbes_companies
FIELDS TERMINATED BY ';'  -- Use comma as the delimiter
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  -- This skips the header row if it's present in the CSV
-- (rang, organizationName, country, revenue_USD_in_mio, profits_USD_in_mio, assets_USD_in_mio, marketValue_USD_in_mio);

Select * from forbes_companies Limit 15;