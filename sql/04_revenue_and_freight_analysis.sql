-- Target Business Case SQL Analysis
-- File: 04_revenue_and_freight_analysis.sql
-- Purpose: Analyze revenue and freight cost patterns across regions

-- 1. Total and average order item price by state
SELECT
    c.customer_state,
    ROUND(SUM(oi.price), 2) AS total_revenue,
    ROUND(AVG(oi.price), 2) AS avg_item_price
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;

-- 2. Total and average freight value by state
SELECT
    c.customer_state,
    ROUND(SUM(oi.freight_value), 2) AS total_freight_cost,
    ROUND(AVG(oi.freight_value), 2) AS avg_freight_cost
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_freight_cost DESC;

-- 3. Revenue vs freight cost comparison at state level
SELECT
    c.customer_state,
    ROUND(SUM(oi.price), 2) AS total_revenue,
    ROUND(SUM(oi.freight_value), 2) AS total_freight_cost,
    ROUND(SUM(oi.freight_value) / SUM(oi.price) * 100, 2) AS freight_percentage
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY freight_percentage DESC;
