## Final Project Report

Team: Pearl Cheng, William Oliver, Sue Vang, Davis Oberle, Joaquin Valdes, Shoua Chang

In this project we looked at the New York Stock Exchange (NYSE) dataset and a global list of companies with their assigned tickers. This would be valuable in a real life scenario if an investment manager was looking for companies registered on the NYSE and was also interested in looking at the historical ratios for all tickers in the database. We extracted the files, performed some data cleansing (transformation), and then loaded the data from the files to the database.


### Extract Process
Your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

Our original data sources were:
* <a href="https://www.kaggle.com/armathur/companies-fundamentals-us" target="_blank">Kaggle</a> - companies_fundamentals_data.csv
    * This file had 111 columns and 43,962 rows of data.
    <img src="/Resources/Extract_1.png /">
    
* <a href="https://www.nasdaq.com/screening/company-list.aspx" target="_blank">NASDAQ</a>, specifically the NYSE CSV version - companylist.csv
    * This file had 8 columns and 3,123 rows of data.
     <img src="/Resources/Extract_2.png /">
    
We downloaded the files from the sources and used Jupyter to extract the CSV files into Panda dataframe.

### Transform Process
What data cleaning or transformation was required.

Companies Fundamentals Data
<ul>
<li>Focused on specific columns and created a new dataframe such as: "ticker", "calendardate", "eps", "pe", "divyield", and "ebitda"</li>
<li>Set "ticker" column as index</li>
</ul>
 <img src="/Resources/Transform_1.png /">
 
Company List
<ul>
<li>Focused on specific columns and created a new dataframe: "Symbol" and "Company"</li>
<li>Renamed "Symbol" column to "ticker"</li>
<li>Set "ticker" column as index</li>
</ul>
 <img src="/Resources/Transform_2.png /">


### Load Process
The final database, tables/collections, and why this was chosen.

We created a NYSE_db databse in PostgreSQL. From the tables created in SQL, we added the ticker as the primary key in the query.sql file. We then used SQLAlchemy to load data into the tables created.
<img src="/Resources/Load_1.png" />
