with

events as (
    select * from {{ ref('stg_ecommerce__events') }}
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