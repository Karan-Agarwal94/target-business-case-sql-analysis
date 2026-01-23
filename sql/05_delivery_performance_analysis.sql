-- Target Business Case SQL Analysis
-- File: 05_delivery_performance_analysis.sql
-- Purpose: Analyze delivery timelines and estimation accuracy

-- 1. Delivery time (in days) for delivered orders
SELECT
    o.order_id,
    DATE(o.order_purchase_timestamp) AS purchase_date,
    DATE(o.order_delivered_customer_date) AS delivery_date,
    DATEDIFF(
        DATE(o.order_delivered_customer_date),
        DATE(o.order_purchase_timestamp)
    ) AS delivery_days
FROM orders o
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL;

-- 2. Difference between estimated and actual delivery (in days)
SELECT
    o.order_id,
    DATEDIFF(
        DATE(o.order_estimated_delivery_date),
        DATE(o.order_delivered_customer_date)
    ) AS estimated_vs_actual_days
FROM orders o
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL;

-- 3. Average delivery time by state
SELECT
    c.customer_state,
    ROUND(
        AVG(
            DATEDIFF(
                DATE(o.order_delivered_customer_date),
                DATE(o.order_purchase_timestamp)
            )
        ),
        2
    ) AS avg_delivery_days
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY avg_delivery_days DESC;

-- 4. Top 5 fastest and slowest delivery states
WITH avg_delivery_by_state AS (
    SELECT
        c.customer_state,
        ROUND(
            AVG(
                DATEDIFF(
                    DATE(o.order_delivered_customer_date),
                    DATE(o.order_purchase_timestamp)
                )
            ),
            2
        ) AS avg_delivery_days
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_state
)
SELECT *
FROM avg_delivery_by_state
ORDER BY avg_delivery_days DESC
LIMIT 5;