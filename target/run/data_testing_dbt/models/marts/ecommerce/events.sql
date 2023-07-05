
  
    

    create or replace table `data-testing-390318`.`dev_zack`.`events`
    
    
    OPTIONS()
    as (
      with

events as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__events`
)

select
    event_id,
    user_id,
    sequence_number,
    session_id,
    created_at,
    ip_address,
    city,
    state,
    postal_code,
    browser,
    traffic_source,
    uri,
    event_type
from
    events
    );
  