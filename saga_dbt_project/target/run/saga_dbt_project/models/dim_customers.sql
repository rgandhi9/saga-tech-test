
  
  create view "dev"."main"."dim_customers__dbt_tmp" as (
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
FROM "dev"."main"."std_customers"
  );
