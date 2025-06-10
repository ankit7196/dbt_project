-- test to check for null values in sales

-- Check for NULLs in sales_summary key columns
SELECT *
FROM {{ ref('sales_summary') }}
WHERE customer_id IS NULL OR total_orders IS NULL OR total_revenue IS NULL;