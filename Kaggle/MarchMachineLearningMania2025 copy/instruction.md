# Forecast the 2025 NCAA Basketball Tournaments

## Overview
You will be forecasting the outcomes of both the men's and women's 2025 collegiate basketball tournaments, by submitting predictions for every possible tournament matchup.

## Description
Another year, another chance to predict the upsets, call the probabilities, and put your bracketology skills to the leaderboard test. In our eleventh annual March Machine Learning Mania competition, Kagglers will once again join the millions of fans who attempt to predict the outcomes of this year's college basketball tournaments. Unlike most fans, you will pick the winners and losers using a combination of rich historical data and computing power, while the ground truth unfolds on television.

You are provided data of historical NCAA games to forecast the outcomes of the Division 1 Men's and Women's basketball tournaments. This competition is the official 2025 edition, with points, medals, prizes, and basketball glory at stake.

We have reverted back to the format from 2023 where you are making predictions about every possible matchup in the tournament, evaluated using the Brier score. See the Evaluation Page for full details.

Prior to the start of the tournaments, the leaderboard of this competition will reflect scores from 2021-2024 only. Kaggle will periodically fill in the outcomes and rescore once the 2025 games begin.


## Evaluation
Submissions are evaluated on the Brier score between the predicted probabilities and the actual game outcomes (this is equivalent to mean squared error in this context).

Submission File
The submission file format also has a revised format for 2025:

We have combined the Men's and Women's tournaments into one single competition. Your submission file should contain predictions for both.
You will now be predicting the hypothetical results for every possible team matchup, not just teams that are selected for the NCAA tournament. This change was enacted to provide a longer time window to submit predictions for the 2025 tournament. Previously, the short time between Selection Sunday and the tournament tipoffs would require participants to quickly turn around updated predictions. By forecasting every possible outcome between every team, you can now submit a valid prediction at any point leading up to the tournaments.
You may submit as many times as you wish before the tournaments start, but make sure to select the two submissions you want to count towards scoring. Do not rely on automatic selection to pick your submissions.
As with prior years, each game has a unique ID created by concatenating the season in which the game was played and the two team's respective TeamIds. For example, "2025_1101_1102" indicates a hypothetical matchup between team 1101 and 1102 in the year 2025. You must predict the probability that the team with the lower TeamId beats the team with the higher TeamId. Note that the men's teams and women's TeamIds do not overlap.

The resulting submission format looks like the following, where Pred represents the predicted probability that the first team will win:

ID,Pred
2025_1101_1102,0.5
2025_1101_1103,0.5
2025_1101_1104,0.5
...
Your 2025 submissions will score 0.0 if you have submitted predictions in the right format. The leaderboard of this competition will be only meaningful once the 2025 tournaments begin and Kaggle rescores your predictions!

## 
Dataset Description
Each season there are thousands of NCAA® basketball games played between Division I college basketball teams, culminating in March Madness®, the national championship men's and women's tournaments that run from mid-March until their championship games in early April. We have provided a large amount of historical data about college basketball games and teams, going back many years. Armed with this historical data, you can explore it and develop your own distinctive ways of predicting March Madness® game outcomes.

The data files incorporate both men's data and women's data. The files that pertain only to men's data will start with the letter prefix M, and the files that pertain only to women's data will start with the letter prefix W. Some files span both men's and women's data, such as Cities and Conferences


The MTeamSpellings and WTeamSpellings files, which are listed in the bottom section below, may help you map external team references into our own Team ID structure.
We extend our gratitude to Kenneth Massey for providing much of the historical data.

File descriptions
Below we describe the format and fields of the competition data files. All of the files are complete through January 28th of the current season. As we get closer to the tournament in mid-March, we will provide updates to these files to incorporate data from the remaining weeks of the current season.

Data Section 1 - The Basics
This section provides everything you need to build a simple prediction model and submit predictions.

Team ID's and Team Names
Tournament seeds since 1984-85 season
Final scores of all regular season, conference tournament, and NCAA® tournament games since 1984-85 season
Season-level details including dates and region names
Example submission file for stage 1
By convention, when we identify a particular season, we will reference the year that the season ends in, not the year that it starts in.

Data Section 1 file: MTeams.csv and WTeams.csv

These files identify the different college teams present in the dataset .

TeamID - a 4 digit id number, uniquely identifying each NCAA® men's or women's team. A school's TeamID does not change from one year to the next, so for instance the Duke men's TeamID is 1181 for all seasons. The men's team ID's range from 1000-1999, whereas all of the women's team ID's range from 3000-3999.
TeamName - a compact spelling of the team's college name, 16 characters or fewer.
FirstD1Season - the first season in our dataset that the school was a Division-I school. This column is only present in the men's data, so it is not found in WTeams.csv.
LastD1Season - the last season in our dataset that the school was a Division-I school. For any teams that are currently Division-I, they will be listed with LastD1Season=2025. Again, this column is only present in the men's data, so it is not found in WTeams.csv.
Data Section 1 file: MSeasons.csv and WSeasons.csv

These files identify the different seasons included in the historical data, along with certain season-level properties. There are separate files for men's data (MSeasons) and women's data (WSeasons).

Season - indicates the year in which the tournament was played.
DayZero - tells you the date corresponding to DayNum=0 during that season. All game dates have been aligned upon a common scale so that (each year) the Monday championship game of the men's tournament is on DayNum=154. Working backward, the men's national semifinals are always on DayNum=152, the men's "play-in" games are on days 134-135, Selection Sunday is on day 132, the final day of the regular season is also day 132, and so on. All game data includes the day number in order to make it easier to perform date calculations. If you need to know the exact date a game was played on, you can combine the game's "DayNum" with the season's "DayZero". For instance, since day zero during the 2011-2012 season was 10/31/2011, if we know that the earliest regular season games that year were played on DayNum=7, they were therefore played on 11/07/2011. Also note that the men's and women's data share the same DayZero each season, although the women's championship game is not necessarily played on DayNum=154
RegionW, RegionX, Region Y, Region Z - by our competitions' convention, each of the four regions in the final tournament is assigned a letter of W, X, Y, or Z. Whichever region's name comes first alphabetically, that region will be Region W. And whichever Region plays against Region W in the national semifinals, that will be Region X. For the other two regions, whichever region's name comes first alphabetically, that region will be Region Y, and the other will be Region Z. This allows us to identify the regions in a standardized way in other files, even if the region names change from year to year.


Data Section 1 file: MNCAATourneySeeds.csv and WNCAATourneySeeds.csv

These files identify the seeds for all teams in each NCAA® tournament, for all seasons of historical data. Thus, there are between 64-68 rows for each year, depending on whether there were any play-in games and how many there were. In recent years the structure has settled at 68 total teams, with four "play-in" games leading to the final field of 64 teams entering Round 1 on Thursday/Friday of the first week (by definition, that is DayNum=136/137 each season). We will not know the seeds of the respective tournament teams, or even exactly which 68 teams it will be, until Selection Sunday on March 16, 2025 (DayNum=132).

Season - the year that the tournament was played in
Seed - this is a 3-character or 4-character identifier of the seed, where the first character is either W, X, Y, or Z (identifying the region the team was in) and the next two digits (either 01, 02, ..., 15, or 16) tell you the seed within the region. For play-in teams, there is a fourth character (a or b) to further distinguish the seeds, since teams that face each other in the play-in games will have seeds with the same first three characters. The "a" and "b" are assigned based on which Team ID is lower numerically.
TeamID - this identifies the id number of the team, as specified in the MTeams.csv or WTeams.csv file

Data Section 1 file: MRegularSeasonCompactResults.csv and WRegularSeasonCompactResults.csv

These files identify the game-by-game results for many seasons of historical data, starting with the 1985 season for men (the first year the NCAA® had a 64-team men's tournament) and the 1998 season for women. For each season, the file includes all games played from DayNum 0 through 132. It is important to realize that the "Regular Season" games are simply defined to be all games played on DayNum=132 or earlier (DayNum=132 is Selection Sunday, and there are always a few conference tournament finals actually played early in the day on Selection Sunday itself).

Data Section 1 file: MNCAATourneyCompactResults.csv and WNCAATourneyCompactResults.csv

These files identify the game-by-game NCAA® tournament results for all seasons of historical data. The data is formatted exactly like the corresponding Regular Season Compact Results data. All men's games will show up as neutral site (so WLoc is always N) and some women's games will show up as neutral site, depending on the specifics.

Because of the consistent structure of the NCAA® tournament schedule, you can generally tell what round a men's game was, just by looking at its day number. However, the men's 2021 tournament scheduling was slightly different, and the women's scheduling has varied a lot. Nevertheless, in general the men's schedule will be:

DayNum=134 or 135 (Tue/Wed) - play-in games to get the tournament field down to the final 64 teams
DayNum=136 or 137 (Thu/Fri) - Round 1, to bring the tournament field from 64 teams to 32 teams
DayNum=138 or 139 (Sat/Sun) - Round 2, to bring the tournament field from 32 teams to 16 teams
DayNum=143 or 144 (Thu/Fri) - Round 3, otherwise known as "Sweet Sixteen", to bring the tournament field from 16 teams to 8 teams
DayNum=145 or 146 (Sat/Sun) - Round 4, otherwise known as "Elite Eight" or "regional finals", to bring the tournament field from 8 teams to 4 teams
DayNum=152 (Sat) - Round 5, otherwise known as "Final Four" or "national semifinals", to bring the tournament field from 4 teams to 2 teams
DayNum=154 (Mon) - Round 6, otherwise known as "national final" or "national championship", to bring the tournament field from 2 teams to 1 champion team
Data Section 1 file: SampleSubmissionStage1.csv



In a Detailed Results file, the first eight columns (Season, DayNum, WTeamID, WScore, LTeamID, LScore, WLoc, and NumOT) are exactly the same as a Compact Results file. However, in a Detailed Results file, there are many additional columns. The column names should be self-explanatory to basketball fans (as above, "W" or "L" refers to the winning or losing team):

WFGM - field goals made (by the winning team)
WFGA - field goals attempted (by the winning team)
WFGM3 - three pointers made (by the winning team)
WFGA3 - three pointers attempted (by the winning team)
WFTM - free throws made (by the winning team)
WFTA - free throws attempted (by the winning team)
WOR - offensive rebounds (pulled by the winning team)
WDR - defensive rebounds (pulled by the winning team)
WAst - assists (by the winning team)
WTO - turnovers committed (by the winning team)
WStl - steals (accomplished by the winning team)
WBlk - blocks (accomplished by the winning team)
WPF - personal fouls committed (by the winning team)
(and then the same set of stats from the perspective of the losing team: LFGM is the number of field goals made by the losing team, and so on up to LPF).

These files provide team-level box scores for many regular seasons of historical data, starting with the 2003 season (men) or starting with the 2010 season (women). All games listed in the MRegularSeasonCompactResults file since the 2003 season should exactly be present in the MRegularSeasonDetailedResults file, and similarly, all games listed in the WRegularSeasonCompactResults file since the 2010 season should exactly be present in the WRegularSeasonDetailedResults file. However, earlier women's data is challenging to collect, and so approximately 1.5% of women's games in the 2010, 2011, and 2012 seasons are unavailable in the data. All games from 2013 to the present should have detailed results present. In previous years, there was also a small amount of detailed results missing from the women's seasons 2013 and 2014, but those have been brought up to 100% completion in this year's data. Also, there was a nagging problem in recent years where many games during the 2021 season showed zero personal fouls for both teams; the correct personal foul numbers have been reconstructed this year and so there are no games with zero personal fouls anymore from 2021, just like in other seasons.

Data Section 2 file: MNCAATourneyDetailedResults.csv and WNCAATourneyDetailedResults.csv

These files provide team-level box scores for many NCAA® tournaments, starting with the 2003 season (men) or starting with the 2010 season (women). Similarly, all games listed in the MNCAATourneyCompactResults or MNCAATourneyCompactResults file for those seasons should exactly be present in the corresponding MNCAATourneyDetailedResults or WNCAATourneyDetailedResults file.

Data Section 3 file: Cities.csv

This file provides a master list of cities that have been locations for games played. Please notice that the Cities and Conferences files are the only two that don't start with an M; this is because the data files are identical between men's and women's data, so you don't need to maintain separate listings of cities or conferences across the two datasets. Also note that if you created any supplemental data in previous years on cities (latitude/longitude, altitude, city-to-city distances, etc.), the CityID's match between previous years and this year, so you should be able to re-use that information.