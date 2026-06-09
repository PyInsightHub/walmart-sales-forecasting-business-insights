SELECT * FROM indian_photography_mahakal.walmert;
## The Top 10 Stores by Total Sales
SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM indian_photography_mahakal.walmert
GROUP BY Store
ORDER BY Total_Sales DESC
LIMIT 10;

## Which Department Generates the Highest Revenue?
SELECT Dept,
       SUM(Weekly_Sales) AS Revenue
FROM indian_photography_mahakal.walmert
GROUP BY Dept
ORDER BY Revenue DESC
LIMIT 1;

## Average Weekly Sales per Store
SELECT Store,
       ROUND(AVG(Weekly_Sales),2) AS Avg_Sales
FROM indian_photography_mahakal.walmert
GROUP BY Store;

## Holiday vs Non-Holiday Sales
SELECT IsHoliday,
       SUM(Weekly_Sales) AS Total_Sales
FROM indian_photography_mahakal.walmert
GROUP BY IsHoliday;

## Top 5 Stores During Holidays
SELECT Store,
       SUM(Weekly_Sales) AS Holiday_Sales
FROM indian_photography_mahakal.walmert
WHERE IsHoliday = TRUE
GROUP BY Store
ORDER BY Holiday_Sales DESC
LIMIT 5;

## Monthly Sales Trend
SELECT MONTH(Date) AS Month,
       SUM(Weekly_Sales) AS Sales
FROM indian_photography_mahakal.walmert
GROUP BY Month
ORDER BY Month