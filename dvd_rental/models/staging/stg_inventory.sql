{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='staging'
    )
}}
select 
    inventory_id,
    film_id,
    store_id
from {{ source('dvd_rental','inventory')}}