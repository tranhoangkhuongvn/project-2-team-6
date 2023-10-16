{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='staging'
    )
}}
select
    rental_id,
    rental_date,
    inventory_id,
    customer_id,
    return_date
from {{ source('dvd_rental','rental')}}