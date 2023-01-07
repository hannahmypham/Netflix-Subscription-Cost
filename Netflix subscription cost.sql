--Look at countries with highest number of movies - Malaysia with 2387
SELECT *
FROM Netflix_subscription_fee.tables
WHERE No_of_Movies = (SELECT Max(No_of_Movies) FROM Netflix_subscription_fee.tables)

--Look at countries with lowest number of movies - San Marino with 373 movies
SELECT *
FROM Netflix_subscription_fee.tables
WHERE No_of_Movies = (SELECT MIN(No_of_Movies) FROM Netflix_subscription_fee.tables)

--Look at countries with largest library  - Czechia with 7325
SELECT *
FROM Netflix_subscription_fee.tables
WHERE Total_Library_Size = (SELECT Max(Total_Library_Size) FROM Netflix_subscription_fee.tables)

--Look at countries with smallest library  - Czechia with 2274
SELECT *
FROM Netflix_subscription_fee.tables
WHERE Total_Library_Size = (SELECT Min(Total_Library_Size) FROM Netflix_subscription_fee.tables)

--Look at countries with same monthly cost for basic plan. I found out the differences in cost for their standard and premium plan
SELECT Country, Monthly_Cost_Basic, Monthly_Cost_Standard, Monthly_Cost_Premium
FROM Netflix_subscription_fee.tables
WHERE Monthly_Cost_Basic = 9.03
ORDER BY Monthly_Cost_Standard DESC

--Look at average cost for basic plan - 8.36
SELECT AVG(Monthly_Cost_Basic)
FROM Netflix_subscription_fee.tables

--Extract countries that pay higher than average price -- 37 countries pay higher than average cost for basic plan
WITH country_with_higher_cost_than_average AS
	(SELECT country, Monthly_Cost_Basic
	FROM Netflix_subscription_fee.tables
	WHERE Monthly_Cost_Basic > (SELECT AVG (Monthly_Cost_Basic) FROM Netflix_subscription_fee.tables)
	ORDER BY Monthly_Cost_Basic DESC)

SELECT COUNT(country)
FROM country_with_higher_cost_than_average

-- Percentage of countries that pay higher cost than average - 56.92%

WITH country_with_higher_cost_than_average AS
	(SELECT country, Monthly_Cost_Basic
	FROM Netflix_subscription_fee.tables
	WHERE Monthly_Cost_Basic > (SELECT AVG (Monthly_Cost_Basic) FROM Netflix_subscription_fee.tables)
	ORDER BY Monthly_Cost_Basic DESC)

SELECT (COUNT(country))/(SELECT COUNT(country) from Netflix_subscription_fee.tables)*100 AS Percentage_of_Countries_Paying_higher_cost 
FROM country_with_higher_cost_than_average

