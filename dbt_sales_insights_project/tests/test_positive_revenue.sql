-- Use macro to ensure revenue is positive
SELECT *
FROM {{ ref('sales_summary') }}
WHERE NOT ({{ is_positive ('total_revenue') }});