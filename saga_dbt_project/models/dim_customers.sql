SELECT
    account_id,
    first_name,
    middle_name,
    surname,
	property_id,
    date_of_birth,
    phone_number,
    email,
    gender,
    deceased_flag,
    account_status
FROM {{ ref('std_customers') }}