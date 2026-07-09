
-- Query 1: Regional Profitability
SELECT
	Region,
	ROUND(SUM(Sales), 2) AS total_sales,
	ROUND(SUM(Profit), 2) AS total_profit,
	ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) *100, 2) AS profit_margin_pct
FROM orders
GROUP BY Region
ORDER BY total_profit DESC;


-- Query 2: Discount Impact by Region
SELECT
	Region,
	ROUND(AVG(Discount), 3) AS avg_discount,
	ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY Region
ORDER BY avg_discount DESC;

-- Query 3: Category and Subcategory Performance
SELECT
	Category,
	`Sub-Category`,
	ROUND(SUM(Sales), 2) AS total_sales,
	ROUND(SUM(Profit) , 2) AS total_profit,
	ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0)* 100, 2) AS profit_margin_pct
FROM orders
GROUP BY  Category, `Sub-Category`
ORDER BY total_profit ASC;

-- Query 4: Discount impact by Sub-Category
SELECT 
	Category,
    `Sub-Category`,
    ROUND(AVG(Discount), 3) AS avg_discount,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY Category, `Sub-Category`
ORDER BY avg_discount DESC;

-- Query 5: Customer Segment Performance
SELECT
	Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM orders
GROUP BY Segment
ORDER BY total_profit DESC;
    
-- Query 6: Monthly Sales and Profit Trend
SELECT
	YEAR (order_date_fixed) AS order_year,
    MONTH (order_date_fixed) AS order_month,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY YEAR(order_date_fixed),MONTH(order_date_fixed)
ORDER BY order_year, order_month;

-- Query 7: Central Region  - Category Breakdown
SELECT 
	Category,
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS prrofit_margin_pct,
    ROUND(AVG(Discount), 3) AS avg_discount
FROM orders
WHERE Region = 'Central'
GROUP BY Category, `Sub-Category`
ORDER BY total_profit ASC;