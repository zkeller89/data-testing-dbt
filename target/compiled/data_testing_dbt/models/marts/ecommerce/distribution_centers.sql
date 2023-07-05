with

distribution_centers as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__distribution_centers`
)

select
    dc_id,
    name,
    latitude,
    longitude,
from
    distribution_centers