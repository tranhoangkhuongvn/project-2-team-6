{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='staging'
    )
}}
select *
from {{ source('dvd_rental','city')}}