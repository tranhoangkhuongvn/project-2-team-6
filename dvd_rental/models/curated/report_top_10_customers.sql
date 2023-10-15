{{
    config(
        materialized='table',
        database='dvd_rental',
        schema='curated'
    )
}}
with total_rentals_per_customer as (
	select customer_id, count(*) total_rentals from rental
    group by customer_id
    order by count(*) desc
)
SELECT c.first_name || ' ' || c.last_name customer_name, t.total_rentals
from customer c
    inner join total_rentals_per_customer t
    on c.customer_id = t.customer_id
    limit 10
