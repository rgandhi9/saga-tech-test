SELECT
    account_id,
    interest_name,
    is_interested
FROM {{ ref('std_customers') }}
UNPIVOT (
	(interest_name, is_interested)
	FOR interest_group IN (
	    (interest_1, interest_1_flag),
	    (interest_2, interest_2_flag),
	    (interest_3, interest_3_flag),
	    (interest_4, interest_4_flag)
	)
)