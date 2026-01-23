-- Target Business Case SQL Analysis
-- File: 06_payment_behavior_analysis.sql
-- Purpose: Analyze customer payment preferences and behavior

-- 1. Distribution of payment types
SELECT
    payment_type,
    COUNT(DISTINCT order_id) AS total_orders
FROM payments
GROUP BY payment_type
ORDER BY total_orders DESC;

-- 2. Month-on-month payment method usage
SELECT
    YEAR(o.order_purchase_timestamp) AS order_year,
    MONTH(o.order_purchase_timestamp) AS order_month,
    p.payment_type,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY order_year, order_month, p.payment_type
ORDER BY order_year, order_month, total_orders DESC;

-- 3. Installment behavior distribution
SELECT
    payment_installments,
    COUNT(DISTINCT order_id) AS total_orders
FROM payments
GROUP BY payment_installments
ORDER BY payment_installments;

-- 4. Average order value by payment type
SELECT
    p.payment_type,
    ROUND(AVG(p.payment_value), 2) AS avg_payment_value
FROM payments p
GROUP BY p.payment_type
ORDER BY avg_payment_value DESC;