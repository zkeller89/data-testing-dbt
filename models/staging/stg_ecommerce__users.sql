with source as (

    select * from {{ source('ecommerce', 'users') }}

),

renamed as (

    select
        id as user_id,
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

    from source

)

select * from renamed

