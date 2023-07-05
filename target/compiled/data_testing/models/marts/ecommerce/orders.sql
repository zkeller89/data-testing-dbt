with

orders as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__orders`
)

select
    order_id,
    user_id,
    status,
    gender,
    created_at,
    returned_at,
    shipped_at,
    delivered_at,
    num_of_item
from
    orders