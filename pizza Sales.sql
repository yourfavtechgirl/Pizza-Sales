CREATE DATABASE pizza;

CREATE TABLE pizza_sales (
    pizza_id INT,
    order_id INT,
    pizza_name_id  TEXT,
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DOUBLE,
    total_price DOUBLE,
     pizza_size TEXT,
     pizza_category TEXT,
     pizza_ingredients TEXT,
    pizza_name TEXT
  
);


SELECT * FROM pizza_sales;

-- TOTAL REVENUE
SELECT sum(total_price) AS Total_revenue
FROM pizza_sales;

--  AVERAGE ORDER VALUE
SELECT SUM(total_price) / count(distinct order_id) as avg_order_value 
FROM pizza_sales;

-- TOTAL PIZZAS SOLD
SELECT SUM(quantity) AS Total_Pizza_sold
FROM pizza_sales;
 
-- TOTAL ORDERS PLACED
SELECT COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales;

-- AVERAGE PIZZAS PER ORDER
 SELECT CAST( CAST(SUM(quantity) AS DECIMAL (10, 2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10, 2)) AS DECIMAL(10, 2)) AS Avg_Pizzas_Per_Order
 FROM pizza_sales;
 
 
 --     CHARTS REQUIREMENT
 
 -- DAILY TREND FOR TOTAL ORDERS
 SELECT DAYNAME(order_date) as order_day, COUNT(DISTINCT order_Id) AS Total_orders
 FROM pizza_sales
 GROUP BY DAYNAME(order_date);
 
 -- MONTHLY TREND FOR TOTAL ORDERS
 SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;

-- PERCENTAGE OF SALES BY PIZZA CATEGORY
select pizza_category, sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales) AS Total_Sales
FROM pizza_sales 
GROUP BY pizza_category;

-- PERCENTAGE OF SALES BY PIZZA SIZE
select pizza_size, sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales) AS Total_Sales
FROM pizza_sales 
GROUP BY pizza_size;

-- TOP 5 PIZZAS BY REVENUE
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

-- BOTTOM 5 PIZZAS BY REVENUE
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

-- TOP 5 PIZZAS BY QUANTITY
SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
LIMIT 5;

-- BOTTOM 5 PIZZAS BY QUANTITY
SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC
LIMIT 5;

-- TOP 5 PIZZAS BY TOTAL ORDERS
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;

-- BOTTOM 5 PIZZAS BY TOTAL PIZZAS
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
LIMIT 5;









