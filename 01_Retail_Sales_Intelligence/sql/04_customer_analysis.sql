
-- Project: Retail Sales Intelligence Platform
-- File: 04_customer_analysis.sql
-- Purpose: Analyse customer purchasing behaviour

SELECT
    c.customer_id,
    c.customer_name,
    c.city,

    COUNT(DISTINCT o.order_id) AS total_orders,

    SUM(oi.quantity) AS total_items,

    SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
    ) AS total_spending

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

JOIN order_items oi
    ON o.order_id = oi.order_id

WHERE o.order_status = 'Completed'

GROUP BY
    c.customer_id,
    c.customer_name,
    c.city
    
ORDER BY total_spending DESC;
