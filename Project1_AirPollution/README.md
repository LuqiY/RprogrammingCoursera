Part_1
------
Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.

Code: [pollutantmean.R](https://github.com/LuqiY/RprogrammingCoursera/blob/master/Project1_AirPollution/pollutantmean.R)

Part_2
------
Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases.

Code: [complete.R](https://github.com/LuqiY/RprogrammingCoursera/blob/master/Project1_AirPollution/complete.R)
