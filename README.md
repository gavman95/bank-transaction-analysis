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
   https://gavman95.github.io/bank-transaction-analysis/

## Insights

* In 2023, I had spent roughly $66.5K, which was around 91.18% of the total money that I received.
* Around $6.4K extra in savings
* My biggest transaction came in the form of voluntary repaying a large portion of my HECS (Uni loans) debt. I paid of $21,445 before start of FY 24 as the HECS debt was being indexed at a 7% in FY 24 and I wanted the indexation to be applied on a smaller HECS debt amount to reduce its affect and save some money.
* My next biggest transaction came in the form on renovating and replacing our central airconditioning. This cost in total $9.72K
* Travel was an interesting category too. I went to Japan in 2023 and spent a total of $7.6K which I now feel I could have saved a lot more had I not booked flights much earlier. I spent $2010.06 on the flights alone as I had booked them 1 month in advance. Normally I would budget further in advance but this was a last minute decision holiday and it was worth the experience.
* Now onto the fun stuff
* In 2023, I decided to invest in myself fitness wise. I started to attend a new local gym regularly and hire a PT. I spent a total of $5.7K on gym/fitness related transactions and around 52.7% (~$3K) went towards PT. :0
* Now for the most shocking (in a bad way) bit. Whilst voluntary repayment of hecs was my biggest transaction category, my most frequent transactions fell into Fast food category :(
* I made a total of 143 fast food transactions which totaled in around $3.6K.
* McDonalds was the most frequent fast food destination, with a total of 65 transactions out of the 143 (~48%)
* Definitely will be cutting down on the fast food in 2024!!!!

In summary this analysis/audit of previous year bank statement can now help me budget for 2024 and cut out any unecessary spending (i.e fast food). 


  
