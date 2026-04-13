SELECT raw_data.account_id 
FROM {{ source('raw_data', 'raw_customers') }} AS customers
