{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
select
    r.rental_id,
    r.rental_date,
    r.return_date,
    r.amount,
    r.payment_date,
    c.customer_name,
    c.email,
    c.address,
    c.postal_code,
    c.city,
    c.country,
    c.phone_number,
    f.film_title,
    f.category,
    f.release_year,
    f.rental_duration,
    f.rental_rate,
    f.length as film_length,
    f.replacement_cost,
    f.rating as film_rating
FROM {{ ref('fct_rentals')}} r
inner join {{ ref('dim_customer')}} c
    on r.customer_id = c.customer_id
inner join {{ ref('dim_film')}} f
    on r.film_id = f.film_id