

  create or replace view `data-testing-390318`.`dev_zack`.`stg_ecommerce__distribution_centers`
  OPTIONS()
  as with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`distribution_centers`

),

renamed as (

    select
        id as dc_id,
        name,
        latitude,
        longitude

    from source

)

select * from renamed;

