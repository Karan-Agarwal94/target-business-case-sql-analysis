-- Target Business Case SQL Analysis
-- File: 02_orders_time_trend_analysis.sql
-- Purpose: Analyze order growth trends and seasonality over time

-- 1. Year-wise order trend
SELECT
    YEAR(order_purchase_timestamp) AS order_year,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_year
ORDER BY order_year;

-- 2. Month-wise order trend (seasonality)
SELECT
    YEAR(order_purchase_timestamp) AS order_year,
    MONTH(order_purchase_timestamp) AS order_month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- 3. Month-on-month growth within each year
SELECT
    YEAR(order_purchase_timestamp) AS order_year,
    MONTH(order_purchase_timestamp) AS order_month,
    COUNT(order_id) AS total_orders,
    LAG(COUNT(order_id)) OVER (
        PARTITION BY YEAR(order_purchase_timestamp)
        ORDER BY MONTH(order_purchase_timestamp)
    ) AS prev_month_orders
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;