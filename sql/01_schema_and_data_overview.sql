-- Project: Target Business Case – SQL Analysis
-- File: Schema and Data Overview
-- Objective:
--   Understand database structure, table relationships, data types,
--   and overall data coverage before performing deep analysis.
--
-- Key areas covered:
--   - Table schemas and data types
--   - Date range of orders
--   - Customer geographical spread

-- 1. Inspect tables
SHOW TABLES;

-- 2. Inspect schema of customers table
DESCRIBE customers;

-- 3. Inspect schema of orders table
DESCRIBE orders;

-- 4. Inspect schema of order_items table
DESCRIBE order_items;

-- 5. Inspect schema of payments table
DESCRIBE payments;

-- 6. Time range of orders
SELECT 
    MIN(order_purchase_timestamp) AS first_order_date,
    MAX(order_purchase_timestamp) AS last_order_date
FROM orders;

-- 7. Order status distribution
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- 8. Geographic coverage of customers
SELECT 
    COUNT(DISTINCT customer_city) AS total_cities,
    COUNT(DISTINCT customer_state) AS total_states
FROM customers;

-- 9. Missing delivery-related timestamps
SELECT
    COUNT(*) AS total_orders,
    SUM(order_delivered_customer_date IS NULL) AS missing_delivery_date,
    SUM(order_estimated_delivery_date IS NULL) AS missing_estimated_date
FROM orders;

-- 10. Check for duplicate order IDs
SELECT 
    COUNT(order_id) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders
FROM orders;

-- 11. Price and freight value distribution check
SELECT 
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    MIN(freight_value) AS min_freight,
    MAX(freight_value) AS max_freight
FROM order_items;
-- End of Schema and Data Overview