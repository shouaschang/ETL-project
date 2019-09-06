## Project Final Report

Team: Pearl Cheng, William Oliver, Sue Vang, Davis Oberle, Joaquin Valdes, Shoua Chang

### Extract Process
Your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

Our original data sources were from:
* Kaggle[https://www.kaggle.com/armathur/companies-fundamentals-us] - companies_fundamentals_data.csv
* NASDAQ[https://www.nasdaq.com/screening/company-list.aspx], specifically the NYSE CSV version - companylist.csv
We downloaded the CSV files from the sources and used Jupyter to extract into Pandas dataframe.

### Transform Process
What data cleaning or transformation was required.

We found the columns that we were interested in from the files, such as: ticker, eps, and peratio, and others from the Kaggle dataset. In addition, we also created an 'calendardate' column do differentiate all the different dates from the original dataset. From the NYSE company list file, we focused on the Symbol and Company Name column. For the ease of reading and the joining process, we renamed the 'Symbol' column to 'ticker'.

### Load Process
The final database, tables/collections, and why this was chosen.

We created a NYSE_db in PostGreSQL and added a primary key in the query. We used SQLAlchemy to load data into the data tables created.
