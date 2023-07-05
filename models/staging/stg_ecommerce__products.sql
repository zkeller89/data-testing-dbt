with source as (

    select * from {{ source('ecommerce', 'products') }}

),

renamed as (

    select
        id as product_id,
        cost,
        category,
        name,
        brand,
        retail_price,
        department,
        sku,
        distribution_center_id

    from source

)

select * from renamed

