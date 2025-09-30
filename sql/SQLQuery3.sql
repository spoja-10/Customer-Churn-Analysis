Select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from stg_Churn) as Percentage
From stg_Churn
Group By Gender

Select Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from stg_Churn) as Percentage
From stg_Churn
Group By Contract

Select Customer_Status, Count(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100 as RevPercentage
From stg_Churn
Group By Customer_Status

Select State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from stg_Churn ) as Percentage
From stg_Churn
Group by State
Order by Percentage desc

Select Distinct Internet_Type 
From stg_Churn
