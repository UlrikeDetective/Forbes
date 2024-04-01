Create database Forbes;
-- Drop database Forbes;

Use Forbes;
SET GLOBAL local_infile = 'ON';
SHOW VARIABLES LIKE 'local_infile';
SHOW VARIABLES LIKE "secure_file_priv";

drop table forbes_names; 

CREATE TABLE forbes_names (
    Person VARCHAR(150) NOT NULL UNIQUE,
    ID INT UNIQUE,
    Business VARCHAR(100) NOT NULL,
    Industry VARCHAR(100) NOT NULL,
    Country_of_residence VARCHAR(100) NOT NULL,
    Continent VARCHAR(50) NOT NULL,
    Gender VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

-- ALTER TABLE forbes_names
-- DROP COLUMN Source2;

Show columns from forbes_names;

-- drop table forbes_2022;
CREATE TABLE forbes_2022 (
    ID INT,
    User_ID INT UNIQUE,
    Table_rank_2022 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2022 DECIMAL(5, 2),
    Age_of_person_2022 INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

CREATE TABLE forbes_2023 (
    ID INT,
    User_ID INT UNIQUE,
    Table_rank_2023 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2023 DECIMAL(5, 2),
    Age_of_person_2023 INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

CREATE TABLE forbes_2024_01 (
    ID INT,
    User_ID INT UNIQUE,
    Table_rank_2024_01 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_01 DECIMAL(5, 2),
    Age_of_person_2024_01 INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);
Drop table forbes_2024_02;
CREATE TABLE forbes_2024_02 (
    ID INT,
    User_ID INT UNIQUE,
    Table_rank_2024_02 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_02 DECIMAL(5, 2),
    Age_of_person_2024_02 INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

-- Drop table forbes_2024_03;

CREATE TABLE forbes_2024_03 (
    ID INT,
    User_ID INT UNIQUE,
    Table_rank_2024_03 INT NOT NULL,
    Person VARCHAR(150) NOT NULL UNIQUE,
    Net_worth_in_BillionUSD_2024_03 DECIMAL(5, 2),
    Age_of_person_2024_03 INT,
    Date_of_data Date,
    PRIMARY KEY (ID),
    FOREIGN KEY (User_ID) REFERENCES forbes_names (ID)
);

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_names.csv'
INTO TABLE forbes_names
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  -- This skips the header row if it's present in the CSV

Delete from forbes_names;

-- SELECT * FROM forbes_names WHERE Name = 'Larry Ellison';

Select Person From forbes_names;

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_2022.csv'
INTO TABLE forbes_2022
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2022, Person, @Net_worth_in_BillionUSD_2022, Age_of_person_2022)
SET Net_worth_in_BillionUSD_2022 = REPLACE(@Net_worth_in_BillionUSD_2022, ',', '.');

Select * from forbes_2022 Limit 15;

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_2023.csv'
INTO TABLE forbes_2023
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2023, Person, @Net_worth_in_BillionUSD_2023, Age_of_person_2023)
SET Net_worth_in_BillionUSD_2023 = REPLACE(@Net_worth_in_BillionUSD_2023, ',', '.');

Select * from forbes_2023 Limit 15;

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_2024_01.csv'
INTO TABLE forbes_2024_01
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_01, Person, @Net_worth_in_BillionUSD_2024_01, Age_of_person_2024_01)
SET Net_worth_in_BillionUSD_2024_01 = REPLACE(@Net_worth_in_BillionUSD_2024_01, ',', '.');


Select * from forbes_2024_01 Limit 5;

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_2024_02.csv'
INTO TABLE forbes_2024_02
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_02, Person, @Net_worth_in_BillionUSD_2024_02, Age_of_person_2024_02)
SET Net_worth_in_BillionUSD_2024_02 = REPLACE(@Net_worth_in_BillionUSD_2024_02, ',', '.');

Select * from forbes_2024_02 Limit 5;

LOAD DATA Local INFILE '/Users/ulrike_imac_air/projects/Trial_and_error/data/Forbes/forbes_2024_03.csv'
INTO TABLE forbes_2024_03
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(ID, User_ID, Table_rank_2024_03, Person, @Net_worth_in_BillionUSD_2024_03, Age_of_person_2024_03, Date_of_data)
SET Net_worth_in_BillionUSD_2024_03 = REPLACE(@Net_worth_in_BillionUSD_2024_03, ',', '.'), Date_of_data = STR_TO_DATE(@Date_of_data, '%m/%d/%Y');

Select * from forbes_2024_03 Limit 510;