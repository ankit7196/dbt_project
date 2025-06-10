-- test to check customer id validity

-- Ensure all customer_ids in orders exist in the customers table
SELECT o.customer_id
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;