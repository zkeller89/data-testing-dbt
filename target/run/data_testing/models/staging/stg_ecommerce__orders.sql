

  create or replace view `data-testing-390318`.`dev_zack`.`stg_ecommerce__orders`
  OPTIONS()
  as with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`orders`

),

renamed as (

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

    from source

)

select * from renamed;

