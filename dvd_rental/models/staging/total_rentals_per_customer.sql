{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='staging'
    )
}}
select customer_id, count(*) total_rentals from {{ source('dvd_rental','rental')}}
    group by customer_id
    order by count(*) desc