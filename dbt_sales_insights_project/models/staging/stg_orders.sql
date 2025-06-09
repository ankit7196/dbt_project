WITH order_data AS (

	SELECT
    order_id,
    CAST(order_date AS DATE) AS order_date,
    customer_id,
    product_id,
    quantity,
    price,
    store_id,
    quantity * price AS total_amount
FROM {{ source('raw', 'orders') }}

)
SELECT * FROM order_data