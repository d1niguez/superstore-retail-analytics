USE superstore;
UPDATE orders
SET order_date_fixed = STR_TO_DATE(`Order Date`, '%m/%d/%Y');

SELECT  `Order Date`, order_date_fixed FROM orders LIMIT 5;