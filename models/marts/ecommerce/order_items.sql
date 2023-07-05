with

order_items as (
    select * from {{ ref('stg_ecommerce__order_items') }}
)

select
    order_item_id,
    order_id,
    user_id,
    product_id,
    inventory_item_id,
    status,
    created_at,
    shipped_at,
    delivered_at,
    returned_at,
    sale_price
from
    order_items