{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
SELECT c.first_name || ' ' || c.last_name customer_name, t.total_rentals
from {{ source('dvd_rental','customer')}} c
    inner join {{ ref('total_rentals_per_customer')}} t
    on c.customer_id = t.customer_id
    order by t.total_rentals desc
    limit 10
