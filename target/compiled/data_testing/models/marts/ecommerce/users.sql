with

users as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__users`
)

select
    user_id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    street_address,
    postal_code,
    city,
    country,
    latitude,
    longitude,
    traffic_source,
    created_at
from
    users