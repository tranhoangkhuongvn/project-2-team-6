{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
with stg_store as (
    select *
    from {{ source('dvd_rental','store')}}
),
stg_staff as (
    select *
    from {{ source('dvd_rental','staff')}}
)
SELECT
    s.store_id,
    sf.first_name || ' ' || sf.last_name as staff_name,
    a.address || ', ' || a.district as address,
	a.postal_code,
	ct.city,
	cnty.country
FROM stg_store s
left join {{ ref('stg_address')}} a
	on s.address_id = a.address_id
left join {{ ref('stg_city')}} ct
	on a.city_id = ct.city_id
left join {{ ref('stg_country')}} cnty
	on ct.country_id = cnty.country_id
left join stg_staff sf
    on s.manager_staff_id = sf.staff_id