{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='staging'
    )
}}
select 
    payment_id,
    customer_id,
    rental_id,
    amount,
    payment_date
from {{ source('dvd_rental','payment')}}