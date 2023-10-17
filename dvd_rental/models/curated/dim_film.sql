{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
with stg_film as (
    select *
    from {{ source('dvd_rental','film')}}
),
stg_film_category as (
    select *
    from {{ source('dvd_rental','film_category')}}
),
stg_category as (
    select *
    from {{ source('dvd_rental','category')}}
)
SELECT
    f.film_id,
    f.title as film_title,
    f.description,
    c.name as category,
    f.release_year,
    f.rental_duration,
    f.rental_rate,
    f.length,
    f.replacement_cost,
    f.rating,
    f.special_features
from stg_film f
left join stg_film_category fc
    on f.film_id = fc.film_id
left join stg_category c
    on fc.category_id = c.category_id