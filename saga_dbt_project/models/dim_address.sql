/*
 QUALIFY required to remove potential duplicates as you can have multiple account_id
 for a single property (in theory).
 */

SELECT
    property_id, -- PK
    property_name,
    street_number,
    apartment,
    street_name,
    district,
    post_town,
    postcode,
    county,
    country,
FROM {{ ref('std_customers') }}
QUALIFY ROW_NUMBER() OVER(PARTITION BY property_id ORDER BY street_number) = 1