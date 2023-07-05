with source as (

    select * from {{ source('ecommerce', 'distribution_centers') }}

),

renamed as (

    select
        id as dc_id,
        name,
        latitude,
        longitude

    from source

)

select * from renamed

