# Netflix-Subscription-Cost

[Tableau dashboard for analysis](https://public.tableau.com/app/profile/hannah.pham.analysis/viz/NetflixSubscriptionCostByCountry/Dashboard1)

[Detailed SQL Queries](https://github.com/hannahmypham/Netflix-Subscription-Cost/blob/main/Netflix%20subscription%20cost.sql)

## About the project
Netflix is one of my favorite streaming services. I have been curious about the how much other countries pay for monthly subscription plan and decided to create a personal project to analyze Netflix's subscription cost across countries. 

## About the dataset
This data set provides information about month subscription cost for 3 different plans: basic, standard and premium for 65 countries. 
The columns include: Country, Total library size, Number of movies, Number of TV shows, Monthly cost for basic plan, Monthly cost for standard plan, Monthly cost for premium plan 

## Questions for the analysis
1. Which country pays the highest cost for subscription? Which country pays the lowest cost for subscription?
2. What is the average cost for basic plan?
3. Which country has the largest library size? Which country has the smallest library size?
4. Does larger library size lead to higher subscription cost?
5. Is there any additional findings that can be inferred from the analysis?

## Key takeaway from dataset
1. Liechtenstein and Switzerland pays highest cost for all 3 plans (Basic, Standard, Premium). Turkey pays the lowest subscription cost for all 3 plans. 
2. Average cost for basic plan is 8.36. 37 countries are currenlt paying higher cost and average cost for basic plan, which account for 56% percent of the countries. 
3. Czechia has the largest library with 7325 items while Crotia has the smallest library with 2274 items. 
4. Larger libray size doesn't correlate with subscription cost, since Switzerland pays the highest cost but doesn't have largest library size or highest number of movies.
5. After visualizing data in Tableau, I found out that many countries pay the same price for basic plans but different prices for standard and premium plans. It could be due to Netflix wants to make basic plan more affordable and target customers to start using their service. 

## Tools used during analysis
1. Aggregate functions: Min, Max, Average
2. Subquery and CTE
3. Sort data using ORDER BY 
