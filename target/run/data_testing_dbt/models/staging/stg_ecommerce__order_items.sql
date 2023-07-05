

  create or replace view `data-testing-390318`.`dev_zack`.`stg_ecommerce__order_items`
  OPTIONS()
  as with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`order_items`

),

renamed as (

    select
        id as order_item_id,
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

    from source

)

select * from renamed;

