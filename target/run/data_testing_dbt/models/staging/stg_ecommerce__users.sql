

  create or replace view `data-testing-390318`.`dev_zack`.`stg_ecommerce__users`
  OPTIONS()
  as with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`users`

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

select * from renamed;

