## Final Project Report

Team: Pearl Cheng, William Oliver, Sue Vang, Davis Oberle, Joaquin Valdes, Shoua Chang

In this project we looked at the New York Stock Exchange (NYSE) data. This would be valuable in a real life scenario if an investment manager was looking for companies on the NYSE and who was also looking to have a database where they could look up company ratios and find their actual name instead of ticker symbol.


### Extract Process
Your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

Our original data sources were from:
<ul>
<li><a href="https://www.kaggle.com/armathur/companies-fundamentals-us" target="_blank">Kaggle</a> - companies_fundamentals_data.csv</li>
<li><a href="https://www.nasdaq.com/screening/company-list.aspx" target="_blank">NASDAQ</a>, specifically the NYSE CSV version - companylist.csv</li>
</ul>
We downloaded the files from the sources and used Jupyter to extract the CSV files into Panda dataframe.

### Transform Process
What data cleaning or transformation was required.

Companies Fundamentals Data
<ul>
<li>Focused on specific columns and created a new dataframe: "ticker", "calendardate", "eps", "pe", "divyield", and "ebitda"</li>
<li>Set "ticker" column as index</li>
</ul>

Company List
<ul>
<li>Focused on specific columns and created a new dataframe: "Symbol" and "Company"</li>
<li>Renamed "Symbol" column to "ticker"</li>
<li>Set "ticker" column as index</li>
</ul>


### Load Process
The final database, tables/collections, and why this was chosen.

We created a NYSE_db databse in PostgreSQL. From the tables created in SQL, we added the ticker as the primary key in the query.sql file. We then used SQLAlchemy to load data into the tables created.
