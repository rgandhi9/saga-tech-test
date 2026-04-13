WITH interests_unpivot AS (
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
            -- Add more interests as required
        )
    )
)

SELECT
    md5(account_id || interest_name) AS uuid,
    account_id,
    interest_name,
    is_interested
FROM interests_unpivot