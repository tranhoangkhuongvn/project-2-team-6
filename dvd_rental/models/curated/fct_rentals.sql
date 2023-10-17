{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
SELECT
	sr.rental_id,
	sr.rental_date,
	sr.return_date,
    si.film_id,
    si.store_id,
    sr.customer_id,
	sp.amount,
	sp.payment_date
from {{ ref('stg_rental')}} sr
inner join {{ ref('stg_payment')}} sp
	on sr.rental_id = sp.rental_id
inner join {{ ref('stg_inventory')}} si
    on sr.inventory_id = si.inventory_id