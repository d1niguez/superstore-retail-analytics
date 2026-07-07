
-- Query 1: Regional Profitability
SELECT
Region,
ROUND(SUM(Sales), 2) AS total_sales,
ROUND(SUM(Profit), 2) AS total_profit,
ROUND(SUM(Profit) / SUM(Sales) *100, 2) AS profit_margin_pct
FROM orders
GROUP BY Region
ORDER BY total_profit DESC;


-- Query 2: Discount Impact by Region
SELECT
Region,
ROUND(AVG(Discount), 3) AS avg_discount,
ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY Region
ORDER BY avg_discount DESC;
