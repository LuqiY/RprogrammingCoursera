Programming Assignment 1: Hospital Quality
--------------------------------------------

View the detailed instruction : [click](https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2FProgAssignment3.pdf)

Part_2  Finding the best hospital in a state
--------------------------------------------------------
Write a function called best that take two arguments: the 2-character abbreviated name of a state and an
outcome name. The function reads the outcome-of-care-measures.csv file and returns a character vector
with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the specified outcome
in that state. The hospital name is the name provided in the Hospital.Name variable. The outcomes can
be one of “heart attack”, “heart failure”, or “pneumonia”. Hospitals that do not have data on a particular
outcome should be excluded from the set of hospitals when deciding the rankings.
Handling ties. If there is a tie for the best hospital for a given outcome, then the hospital names should
be sorted in alphabetical order and the first hospital in that set should be chosen (i.e. if hospitals “b”, “c”,
and “f” are tied for best, then hospital “b” should be returned).

Code: [best.R](https://github.com/LuqiY/RprogrammingCoursera/blob/master/Assignment3_HospitalQuality/best.R)

Part_3  Ranking hospitals by outcome in a state
--------------------------------------------------------
Write a function called rankhospital that takes three arguments: the 2-character abbreviated name of a
state (state), an outcome (outcome), and the ranking of a hospital in that state for that outcome (num).
The function reads the outcome-of-care-measures.csv file and returns a character vector with the name
of the hospital that has the ranking specified by the num argument. For example, the call
rankhospital("MD", "heart failure", 5)
would return a character vector containing the name of the hospital with the 5th lowest 30-day death rate
for heart failure. The num argument can take values “best”, “worst”, or an integer indicating the ranking
(smaller numbers are better). If the number given by num is larger than the number of hospitals in that
state, then the function should return NA. Hospitals that do not have data on a particular outcome should
be excluded from the set of hospitals when deciding the rankings.
Note that Cypress Fairbanks Medical Center and Detar Hospital Navarro both have the same 30-day rate
(8.7). However, because Cypress comes before Detar alphabetically, Cypress is ranked number 3 in this
scheme and Detar is ranked number 4. One can use the order function to sort multiple vectors in this
manner (i.e. where one vector is used to break ties in another vector).

Code: [rankhospital.R](https://github.com/LuqiY/RprogrammingCoursera/blob/master/Assignment3_HospitalQuality/rankhospital.R)

Part_4   Ranking hospitals in all states
--------------------------------------------------------
Write a function called rankall that takes two arguments: an outcome name (outcome) and a hospital ranking
(num). The function reads the outcome-of-care-measures.csv file and returns a 2-column data frame
containing the hospital in each state that has the ranking specified in num. For example the function call
rankall("heart attack", "best") would return a data frame containing the names of the hospitals that
are the best in their respective states for 30-day heart attack death rates. The function should return a value
for every state (some may be NA). The first column in the data frame is named hospital, which contains
the hospital name, and the second column is named state, which contains the 2-character abbreviation for
the state name. Hospitals that do not have data on a particular outcome should be excluded from the set of
hospitals when deciding the rankings.

Code: [rankall.R](https://github.com/LuqiY/RprogrammingCoursera/blob/master/Assignment3_HospitalQuality/rankall.R)
