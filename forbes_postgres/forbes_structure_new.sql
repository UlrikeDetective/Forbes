-- Drop database forbes_new;

-- Enable loading data from files
SET client_min_messages TO WARNING;

-- Drop tables if they exist
DROP TABLE IF EXISTS forbes_names CASCADE;
DROP TABLE IF EXISTS forbes_2021 CASCADE;
DROP TABLE IF EXISTS forbes_2022 CASCADE;
DROP TABLE IF EXISTS forbes_2023 CASCADE;
DROP TABLE IF EXISTS forbes_2024_01 CASCADE;
DROP TABLE IF EXISTS forbes_2024_02 CASCADE;
DROP TABLE IF EXISTS forbes_2024_03 CASCADE;
DROP TABLE IF EXISTS forbes_2024_04 CASCADE;
DROP TABLE IF EXISTS forbes_2024_05 CASCADE;
DROP TABLE IF EXISTS forbes_2024_06 CASCADE;
DROP TABLE IF EXISTS forbes_2024_07 CASCADE;
DROP TABLE IF EXISTS forbes_2024_08 CASCADE;
DROP TABLE IF EXISTS forbes_2024_09 CASCADE;
DROP TABLE IF EXISTS forbes_2024_10 CASCADE;
DROP TABLE IF EXISTS forbes_2024_11 CASCADE;
DROP TABLE IF EXISTS forbes_location CASCADE;
DROP TABLE IF EXISTS forbes_employees CASCADE;
DROP TABLE IF EXISTS forbes_companies CASCADE;

-- Create tables
CREATE TABLE forbes_names (
    Person VARCHAR(150) NOT NULL UNIQUE,
    ID SERIAL PRIMARY KEY,
    Business VARCHAR(100),
    Industry VARCHAR(100),
    Gender VARCHAR(25),
    City VARCHAR(100),
    State VARCHAR(100),
    Country_of_residence VARCHAR(50),
    Continent VARCHAR(50),
    Citizenship VARCHAR(50),
    Self_made VARCHAR(10)
);

CREATE TABLE forbes_2021 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2021 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2021 DECIMAL(8, 2),
    Age_of_person_2021 INT,
    date_of_year INT
);

CREATE TABLE forbes_2022 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2022 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2022 DECIMAL(8, 2),
    Age_of_person_2022 INT,
    date_of_year INT
);

CREATE TABLE forbes_2023 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2023 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2023 DECIMAL(8, 2),
    Age_of_person_2023 INT,
    date_of_year INT
);

CREATE TABLE forbes_2024_01 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_01 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_01 DECIMAL(8, 2),
    Age_of_person_2024_01 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_02 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_02 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_02 DECIMAL(8, 2),
    Age_of_person_2024_02 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_03 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_03 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_03 DECIMAL(8, 2),
    Age_of_person_2024_03 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_04 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_04 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_04 DECIMAL(8, 2),
    Age_of_person_2024_04 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_05 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_05 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_05 DECIMAL(8, 2),
    Age_of_person_2024_05 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_06 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_06 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_06 DECIMAL(8, 2),
    Age_of_person_2024_06 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_07 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_07 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_07 DECIMAL(8, 2),
    Age_of_person_2024_07 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_08 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_08 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_08 DECIMAL(8, 2),
    Age_of_person_2024_08 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_09 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_09 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_09 DECIMAL(8, 2),
    Age_of_person_2024_09 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_10 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_10 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_10 DECIMAL(8, 2),
    Age_of_person_2024_10 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_11 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_11 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_11 DECIMAL(8, 2),
    Age_of_person_2024_11 INT,
    Date_of_data DATE
);

CREATE TABLE forbes_2024_12 (
    ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES forbes_names(ID),
    Table_rank_2024_12 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_12 DECIMAL(8, 2),
    Age_of_person_2024_12 INT,
    Date_of_data DATE
);

DROP TABLE IF EXISTS forbes_location CASCADE;

CREATE TABLE forbes_location (
    ID_location SERIAL PRIMARY KEY,
    City VARCHAR(100),
    US_State VARCHAR(100),
    Country VARCHAR(100),
    Continent VARCHAR(100),
    latitude DECIMAL(22, 19),
    longitude DECIMAL(22, 19),
    FOREIGN KEY (City) REFERENCES forbes_names(City)
);

CREATE TABLE forbes_employees (
    rang SERIAL PRIMARY KEY,
    organizationName VARCHAR(100),
    industry VARCHAR(255),
    country VARCHAR(100),
    employees INT
);

DROP TABLE IF EXISTS forbes_companies CASCADE;

CREATE TABLE forbes_companies (
    rang SERIAL PRIMARY KEY,
    organizationName VARCHAR(200),
    country VARCHAR(100),
    revenue_USD_in_mio REAL,
    profits_USD_in_mio REAL,
    assets_USD_in_mio REAL,
    marketValue_USD_in_mio REAL
);

-- Load data from CSV files
-- Adjust the file paths as necessary
COPY forbes_names(Person, ID, Business, Industry, Gender, City, State, Country_of_residence, Continent, Citizenship, Self_made)
FROM '/Users/ulrike_imac_air/projects/DataScienceProjects/Forbes/Forbes/forbes_csv/forbes_names.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2021(ID, User_ID, Table_rank_2021, Person, Net_worth_in_BillionUSD_2021, Age_of_person_2021, date_of_year)
FROM '/path_to_file/forbes_2021n.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2022(ID, User_ID, Table_rank_2022, Person, Net_worth_in_BillionUSD_2022, Age_of_person_2022, date_of_year)
FROM '/path_to_file/forbes_2022n.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2023(ID, User_ID, Table_rank_2023, Person, Net_worth_in_BillionUSD_2023, Age_of_person_2023, date_of_year)
FROM '/path_to_file/forbes_2023n.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_01(ID, User_ID, Table_rank_2024_01, Person, Net_worth_in_BillionUSD_2024_01, Age_of_person_2024_01, Date_of_data)
FROM '/Users/ulrike_imac_air/projects/DataScienceProjects/Forbes/Forbes/forbes_csv/forbes_2024_01.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_02(ID, User_ID, Table_rank_2024_02, Person, Net_worth_in_BillionUSD_2024_02, Age_of_person_2024_02, Date_of_data)
FROM '/path_to_file/forbes_2024_02.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_03(ID, User_ID, Table_rank_2024_03, Person, Net_worth_in_BillionUSD_2024_03, Age_of_person_2024_03, Date_of_data)
FROM '/path_to_file/forbes_2024_03.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_04(ID, User_ID, Table_rank_2024_04, Person, Net_worth_in_BillionUSD_2024_04, Age_of_person_2024_04, Date_of_data)
FROM '/path_to_file/forbes_2024_04.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_05(ID, User_ID, Table_rank_2024_05, Person, Net_worth_in_BillionUSD_2024_05, Age_of_person_2024_05, Date_of_data)
FROM '/path_to_file/forbes_2024_05.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_06(ID, User_ID, Table_rank_2024_06, Person, Net_worth_in_BillionUSD_2024_06, Age_of_person_2024_06, Date_of_data)
FROM '/path_to_file/forbes_2024_06.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_07(ID, User_ID, Table_rank_2024_07, Person, Net_worth_in_BillionUSD_2024_07, Age_of_person_2024_07, Date_of_data)
FROM '/path_to_file/forbes_2024_07.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_08(ID, User_ID, Table_rank_2024_08, Person, Net_worth_in_BillionUSD_2024_08, Age_of_person_2024_08, Date_of_data)
FROM '/path_to_file/forbes_2024_08.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_09(ID, User_ID, Table_rank_2024_09, Person, Net_worth_in_BillionUSD_2024_09, Age_of_person_2024_09, Date_of_data)
FROM '/path_to_file/forbes_2024_09.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_10(ID, User_ID, Table_rank_2024_10, Person, Net_worth_in_BillionUSD_2024_10, Age_of_person_2024_10, Date_of_data)
FROM '/path_to_file/forbes_2024_10.csv' DELIMITER ';' CSV HEADER;

COPY forbes_2024_11(ID, User_ID, Table_rank_2024_11, Person, Net_worth_in_BillionUSD_2024_11, Age_of_person_2024_11, Date_of_data)
FROM '/path_to_file/forbes_2024_11.csv' DELIMITER ';' CSV HEADER;

COPY forbes_location(ID_location, City, US_State, Country, Continent, latitude, longitude)
FROM '/path_to_file/forbes_data_with_coordinates2.csv' DELIMITER ';' CSV HEADER;

COPY forbes_employees(rang, organizationName, industry, country, employees)
FROM '/path_to_file/forbes_employees_2024.csv' DELIMITER ';' CSV HEADER;

COPY forbes_companies(rang, organizationName, country, revenue_USD_in_mio, profits_USD_in_mio, assets_USD_in_mio, marketValue_USD_in_mio)
FROM '/path_to_file/Forbes_companies_mio_2024.csv' DELIMITER ';' CSV HEADER;
