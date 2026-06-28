-- Level 1: Executive Business Questions

-- Q1. What is the total revenue genrated?
SELECT SUM(price) AS Total_Revenue 
FROM car_sales;

-- Q2. How many cars were sold?
SELECT DISTINCT COUNT(car_id) AS Car_sold 
FROM car_sales;

-- Q3. What is the average selling price of a car?
SELECT ROUND(AVG(price), 2) AS avg_selling_price 
FROM car_sales;

-- Level 2: Product Performance Analysis

-- Q4. Which companies generate the highest revenue?
SELECT Company, SUM(price) AS revenue 
FROM car_sales
GROUP BY Company
ORDER BY revenue DESC
LIMIT 5;

-- Q5. Which companies sell the most vehicles?

SELECT Company, COUNT(*) AS Car_Sold 
FROM car_sales
GROUP BY Company
ORDER BY Car_Sold DESC
LIMIT 5;

-- Q6. Which models are most popular?
SELECT Model, COUNT(*) AS sales 
FROM car_sales
GROUP BY Model
ORDER BY sales DESC
LIMIT 5;

-- Q7. Which body style sells the most?
SELECT body_style, COUNT(*) AS sales 
FROM car_sales
GROUP BY body_style
ORDER BY sales DESC
LIMIT 1;

-- Level 3: Customer Analysis

-- Q8. Does income affect car price?
SELECT salary_band, ROUND(AVG(price), 2) AS avg_price 
FROM car_sales
GROUP BY salary_band;

-- Q9. What is the gender distribution?

SELECT Gender, ROUND((100.0 * COUNT(*)/(SELECT COUNT(*) FROM car_sales)),2) AS sales 
FROM car_sales
GROUP BY Gender;

-- Q10. Which gender spends more on average?
SELECT Gender, AVG(price) AS avg_price
FROM car_sales
GROUP BY Gender;

-- Level 4: Regional Analysis

-- Q11. Which dealer region generates the highest revenue?
SELECT Dealer_Region, SUM(price) AS Revenue
FROM car_sales
GROUP BY Dealer_Region
ORDER BY Revenue DESC
LIMIT 1;

-- Q12. Which dealer region sells the most cars?
SELECT Dealer_Region, COUNT(*) AS Sales
FROM car_sales
GROUP BY Dealer_Region
ORDER BY Sales DESC
LIMIT 1;

-- Q13. Which company performs best in each region?
WITH region_with_top_company AS (SELECT  Dealer_Region, Company, SUM(price) AS revenue,
	RANK() OVER( PARTITION BY Dealer_Region
				ORDER BY SUM(price) DESC) AS rnk
FROM car_sales
GROUP BY Dealer_Region, Company)

SELECT Dealer_Region, Company, revenue
FROM region_with_top_company
WHERE rnk = 1;

-- Level 5: Vehicle Preference Analysis

-- Q14. Auto vs Manual transmission sales?
SELECT Transmission, ROUND((100.0 * COUNT(*)/(SELECT COUNT(*) FROM car_sales)),2) AS sales 
FROM car_sales
GROUP BY 1;

-- Q15. Which colors are most popular?
SELECT Color, COUNT(*) AS Sales
FROM car_sales
GROUP BY Color
ORDER BY Sales DESC
LIMIT 1;

-- Q16. Which engine type is most common?
SELECT Engine, ROUND((100.0 * COUNT(*)/(SELECT COUNT(*) FROM car_sales)),2) AS sales 
FROM car_sales
GROUP BY 1;

-- Level 6: Time Analysis

-- Q17. Which month generated the highest revenue?
SELECT Months, SUM(Price) AS Revenue
FROM car_sales
WHERE Months <> ''
GROUP BY Months
ORDER BY Revenue DESC;

-- Advance Business Questions

-- Q18. Top-selling model within each company
WITH Top_models AS (SELECT Company, Model, COUNT(*) AS Sales,
	RANK() OVER( PARTITION BY Company
				ORDER BY COUNT(*) DESC) AS rnk
FROM car_sales
GROUP BY Company, Model)

SELECT * FROM Top_models
WHERE rnk = 1;

-- Q19. Top 3 dealer regions by revenue
SELECT Dealer_Region, SUM(price) AS revenue
FROM car_sales
GROUP BY Dealer_Region
ORDER BY revenue DESC
LIMIT 3;

-- Q20. Revenue contribution percentage by company
SELECT Company, ROUND(100.0*SUM(price)/(SELECT SUM(price) FROM car_sales),2) AS revenue_contribution
FROM car_sales
GROUP BY Company
ORDER BY revenue_contribution DESC;

-- Q21. Which regions have above-average revenue?
WITH regional_revenue AS (SELECT Dealer_Region, SUM(price) AS revenue
	FROM car_sales
    GROUP BY Dealer_Region)
    
SELECT * FROM regional_revenue
WHERE revenue > (SELECT AVG(revenue) FROM regional_revenue);