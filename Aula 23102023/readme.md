The script processes and visualizes data from the exemplo_viagens.csv dataset, which appears to contain information about different travels. The script focuses on cleaning the data, particularly the expenses column, and then visualizing various aspects of the dataset.

Steps Carried Out:
Setup:

The working directory is set to "Aula 23102023".
Essential libraries (lubridate and tidyverse) are loaded.
Data Import:

The CSV file exemplo_viagens.csv is imported. It uses a semicolon (;) as the separator, and strings are not converted to factors.
The structure and a summary of the imported data are displayed for preliminary analysis.
Data Cleaning:

The redundant 'X' column is removed from the dataset.
Visualizing Travel Information:

A bar chart is plotted to show the distribution of different travel types.
A bar chart is plotted to show the distribution of various travel statuses.
Processing the 'Valor.Total' (Total Value) Column:

A temporary column is created to clean the Valor.Total values, which are stripped of the currency symbol and commas are replaced with periods.
Rows with values not matching the expected monetary format are identified and printed for manual inspection.
The temporary column is removed post-analysis.
The cleaned values in the Valor.Total column are converted to a numeric data type.
The number of missing values (NA) in the Valor.Total column is checked and printed post-conversion.
Visualizing Travel Expenses:

Entries with missing values in the Valor.Total column are filtered out.
A histogram is plotted to visualize the distribution of travel expenses.
Filtering and Visualizing Travel Expenses to Avaré/SP:

The dataset is filtered to retain only entries where the travel destination includes "Avaré/SP".
A histogram is plotted to visualize the distribution of travel expenses specific to "Avaré/SP".
Saving Visualizations:

The plot visualizing travel expenses for "Avaré/SP" is saved as an image file (plot_avare.png) in the "Aula 23102023" directory.
Conclusion:
The script provides a comprehensive view of the travel data, emphasizing data cleaning and visualization. It offers insights into the distribution of travel types, statuses, and expenses, with a particular focus on travels to "Avaré/SP".
