with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`inventory_items`

),

renamed as (

    select
        id as inventory_item_id,
        product_id,
        created_at,
        sold_at,
        cost,
        product_category,
        product_name,
        product_brand,
        product_retail_price,
        product_department,
        product_sku,
        product_distribution_center_id

    from source

)

select * from renamed