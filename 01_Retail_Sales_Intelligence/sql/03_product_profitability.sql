
-- Project: Retail Sales Intelligence Platform
-- File: 03_product_profitability.sql
-- Purpose: Analyse product-level revenue, cost and profit

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold,

    SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
    ) AS total_revenue,

    SUM(
        oi.quantity * p.unit_cost
    ) AS total_cost,

    SUM(
        oi.quantity * oi.unit_price
        - oi.discount_amount
        - oi.quantity * p.unit_cost
    ) AS total_profit

FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id

JOIN orders o
    ON oi.order_id = o.order_id

WHERE o.order_status = 'Completed'

GROUP BY p.product_name

ORDER BY total_profit DESC;
