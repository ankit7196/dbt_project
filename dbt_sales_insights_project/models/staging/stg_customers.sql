WITH source_tbl AS(
SELECT
    customer_id,
    TRIM(first_name) AS first_name,
    TRIM(last_name) AS last_name,
    LOWER(email) AS email,
    CAST(signup_date AS DATE) AS signup_date
FROM {{ source('raw', 'customers') }}
)
SELECT * FROM source_tbl