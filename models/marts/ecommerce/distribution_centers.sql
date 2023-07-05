with

distribution_centers as (
    select * from {{ ref('stg_ecommerce__distribution_centers') }}
)

select
    dc_id,
    name,
    latitude,
    longitude,
from
    distribution_centers