SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM {{ ref('fct_sales') }}
GROUP BY customer_id