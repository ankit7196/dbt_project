SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.first_name,
    c.last_name,
    o.product_id,
    o.quantity,
    o.price,
    o.total_amount
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
  ON o.customer_id = c.customer_id