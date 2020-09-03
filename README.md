# ETL_project-

Wines from Around The World

Our Goal:
Our goal for cleaning data about different wines from around the world was to learn which countries export and import this beloved beverage. When most people think of wine, they associate it with France or Napa Valley. We wanted to learn what countries import wines from other places and explore what were popular, expensive, and affordable options. We hope to use this data to help wine vendors stock their inventory better and learn about different countries' particular wine habits.

Extract:
The first form of data we used was originally from Kaggle.com and was in a CSV. This was a CSV file with over 150k cells. It broke down countries, regions, price per bottle, variety, winery, and even the description of each wine. The second was from WorldStopExports (http://www.worldstopexports.com/top-wine-importing-countries/)  and analyzed wine imports of each country in 2019. We took the data from the article and created a CSV to combine with the Kaggel data.

Transform:
We decided to use SQL to transform the data to tell the story about wine around the world. We joined the two CSV files on countries since that was comparable. We created a sqlite database to easily connect to Jupyter Notebook and then cleaned the data in there. After the data was cleaned, we created the queries file to join our tables. 

We primarily used PGAdmin to sift through parts of the data such as counting the countries that made wine and the average Global Wine Points they had. We also looked at each country’s ‘story’ of the data. We could see what varieties each country exported the most of and the amount of money a country made from importing specific types of wine. Lastly, we also looked at highest vs. lowest pricing per bottle and the different varieties of wine such as Cab vs. Pinot etc. In addition to PGAdmin, we also used Sqlalchemy and Sqlite.  

Load:
For the final database, we loaded the data as Sqlite to read easily in Jupyter Notebook and we cleaned it there. This was chosen because it makes reading the data easier, especially if PGAdmin is inaccessible. The final tables/collections can be found in queries.sql. 

The final tables/collections were an analysis of: average quality of wine from a country and how much it imports; highest quality of wine under $40; average quality of wine by country; looking at the countries with the cheapest wine; finding countries with the highest value wine (meaning cheapest with quality points above 90); identifying the cheapest as well as the most expensive wines; and, finally, the wines with a perfect score. 

With our database, the end user will be able to sort and filter through wine information according to their data needs. They are able to search by country, average global wine score, average imports by $, as well as filter by provinces/regions or variety. We have compiled a comprehensive dataset that will be useful for anyone in the industry or anyone that has an interest in wine.

_____________


What We Learned:
We learned that Sqlite and Sqlalchemy are difficult to pair with PGAdmin. We also learned that it’s difficult to clean data in this way with multiple people since some things work on some computers and not on others. Extracting the data wasn’t as simple as we thought and neither was transforming the data. Each part of ETL seemed simple on the surface, but was a lot more challenging than assumed. 

We decided to use CSVs because we were familiar with uploading it in PGAdmin. We decided to use SQL because we felt more comfortable in it. However, we deviated from just using PGAdmin because we had people in the group who were unable to access Postgres and we wanted to experiment with having to work with multiple different SQL databases to replicate problem solving in the workplace. Lastly, we decided to create these tables because we believed these would be the most helpful to analyze data with for wine vendors. 
