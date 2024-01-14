# Bank Statement Analysis

The following project was done as a hobby to compile all my bank statements for the year 2023 and create a simple visualisation in Tableau.

Three main steps included where to 
* Aquiring the raw data
  * Download all the bank statements and merge all corresponding to each financial institution (e.g ANZ, ING, NAB, AMEX). I.e 4 csv files
    
* Data Cleaning
  * In SQL, format and clean data from each 4 bank statements to ensure all use the correct date format, all columns have the correct data type,
    ,remove any unwanted special characters, then create a new table.
    
  * With the new table, next thing I wanted to do were to create some new fields. I went into SQL again as well as Python to filter through the transaction details field to then   
    classify them into category and subcategory. This step proved to be time consuming as is all data wrangling, which involved me doing steps like removing unwanted characters,   
    replacing keywords in transaction details string to help the categorisation easier e.t.c, however the power of regex helped automate lot of the work.

    e.g. transaction details         | category      | subcategory
         "store CHIRNSIDE"              Fast Food       MCDONALDS
         "McDonalds 1712 CHIRNSIDE PA"   Fast Food      MCDONALDS
    
  * Once I was happy with the Data Cleaning, it was time to explore and analyse the data in Tableau. I could have done it in python but I wanted to use Tableau and practice up my 
    dashboarding skills
  
* EDA
  
Link to my bank statements analysis dashboard created in Tableau:
https://gavman95.github.io/personal-projects/
