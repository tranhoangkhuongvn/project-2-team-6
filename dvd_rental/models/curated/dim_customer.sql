{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
with stg_customer as (
    select *
    from {{ source('dvd_rental','customer')}}
)
SELECT
	c.customer_id,
	c.first_name || ' ' || c.last_name as customer_name,
	c.email,
	c.activebool as active,
	a.address || ', ' || a.district as address,
	a.postal_code,
	ct.city,
	cnty.country,
	a.phone as phone_number
FROM stg_customer c
left join {{ ref('stg_address')}} a
	on c.address_id = a.address_id
left join {{ ref('stg_city')}} ct
	on a.city_id = ct.city_id
left join {{ ref('stg_country')}} cnty
	on ct.country_id = cnty.country_id