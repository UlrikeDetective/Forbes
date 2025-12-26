
    # Forbes_list

    Forbes billionairs list, monthly updated

    ## Table of Contents
    - [Installation](#installation)
    - [Usage](#usage)
    - [Contributors](#contributors)
    - [License](#license)
    - [Badges](#badges)
    - [GitHub Repository](#github-repository)

    ## Installation
    ```
    MySQL, R, Python
    ```
    ## Usage
    ```
    data analysis
    ```
    ## Contributors
    me
    ## License
    This project is licensed under the GNU General Public License v3.0 License - see the [LICENSE](LICENSE) file for details.
    ## Badges
    [![GitHub stars](https://img.shields.io/github/stars//UlrikeDetective/Forbes)](https://github.com/UlrikeDetective/Forbes/stargazers) [![GitHub forks](https://img.shields.io/github/forks/UlrikeDetective/Forbes)](https://github.com/UlrikeDetective/Forbes/network/members) [![GitHub issues](https://img.shields.io/github/issues/UlrikeDetective/Forbes)](https://github.com/UlrikeDetective/Forbes/issues) [![GitHub license](https://img.shields.io/github/license/UlrikeDetective/Forbes)](https://github.com/UlrikeDetective/Forbes/blob/master/LICENSE)
    ## GitHub Repository
    [Link to GitHub repository](https://github.com/UlrikeDetective/Forbes)

    Forbes Billionaire data

Forbes Billionaire list 2022 is from Kaggle.
Forbes Billionaire list 2023 - web scraping from Forbes.com
Month data Forbes billionaire list starting from January 2024 is from web scraping from Forbes.com. The web scraping takes place on the last working day of each month.

Data cleaning and structure
ID (User_ID) is assigned to each person (VLookup). Continent and Gender is added. Sources are separated. Net_worth in Billion USD is cleaned up to only numbers.

Data cleaning of persons Names - deleted all special characters 

Data is stored in a MySQL Database called Forbes. 
Table names: 
forbes_names - Information on Names of Billionaires, ID for each Billionaire, plus Country and Continent of residence, Source of wealth, Industry of wealth and Gender of person. If the Name include "& Family" than the gender is the gender of the named person. Primary key is ID

Years and Month tables: contain User_ID, Rank as of ..., Name, net_worth_in BillionUSD_..., Age_of_person_... Foreign Key is User_ID.
    
