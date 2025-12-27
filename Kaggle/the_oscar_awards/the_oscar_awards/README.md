# Oscar Award Analysis Project

This project provides an analysis of the Oscar awards from 1927 to 2025. It includes data on nominations, wins, and various statistics related to the Oscars.

## Project Structure

The project consists of the following files:

- **notebooks/the_oscar_award_analysis_1927_2025.ipynb**: This Jupyter notebook contains the complete analysis, including both markdown explanations and R code for the Oscar award analysis.

- **notebooks/the_oscar_award_analysis_1927_2025_code_only.ipynb**: This notebook contains only the R code extracted from the original analysis notebook, allowing for easy access to the code without the accompanying markdown text.

- **markdown/the_oscar_award_analysis_1927_2025_text.md**: This file contains all the markdown text from the original notebook, preserving the explanations and comments for reference.

## Usage Instructions

1. **Install Required Packages**: Ensure that you have the necessary R packages installed. You can install them using the following command in R:
   ```R
   install.packages(c("tidyverse", "dplyr", "skimr"))
   ```

2. **Load the Data**: The data for the analysis can be loaded using the following command in R:
   ```R
   oscars <- read.csv("/kaggle/input/the-oscar-award/the_oscar_award.csv")
   ```

3. **Run the Analysis**: Open the `the_oscar_award_analysis_1927_2025.ipynb` notebook in Jupyter and run the cells to perform the analysis.

4. **Review the Results**: Check the markdown sections for insights and summaries of the Oscar awards data.

## Contributions

Feel free to contribute to this project by adding more analyses or improving the existing code and documentation.