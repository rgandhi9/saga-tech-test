SELECT 
	raw_data.account_id::UUID AS account_id, --PK
	raw_data.first_name::VARCHAR AS first_name,
	raw_data.middle_name::VARCHAR AS middle_name,
	raw_data.surname::VARCHAR AS surname,
	md5(
		raw_data.address.street_number
		||raw_data.address.street_name
		||raw_data.address.post_town
		||raw_data.address.postcode
	) AS property_id, --FK
	raw_data.address.property_name::VARCHAR AS property_name,
	raw_data.address.street_number::INTEGER AS street_number,
	raw_data.address.apartment::VARCHAR AS apartment,
	raw_data.address.street_name::VARCHAR AS street_name,
	raw_data.address.district::VARCHAR AS district,
	raw_data.address.post_town::VARCHAR AS post_town,
	raw_data.address.postcode::VARCHAR AS postcode,
	raw_data.address.county::VARCHAR AS county,
	raw_data.address.country::VARCHAR AS country,
	raw_data.date_of_birth::DATE AS date_of_birth,
	raw_data.phone_number::VARCHAR AS phone_number,
	raw_data.email::VARCHAR AS email,
	raw_data.gender::VARCHAR AS gender,
	raw_data.deceased_flag::BOOLEAN AS deceased_flag,
	raw_data.account_status::VARCHAR AS account_status,
	raw_data.interest_1::VARCHAR AS interest_1,
	raw_data.interest_1_flag::BOOLEAN AS interest_1_flag,
	raw_data.interest_2::VARCHAR AS interest_2,
	raw_data.interest_2_flag::BOOLEAN AS interest_2_flag,
	raw_data.interest_3::VARCHAR AS interest_3,
	raw_data.interest_3_flag::BOOLEAN AS interest_3_flag,
	raw_data.interest_4::VARCHAR AS interest_4,
	raw_data.interest_4_flag::BOOLEAN AS interest_4_flag
FROM "dev"."main"."raw_customers"