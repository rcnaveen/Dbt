{{config(materialized='incremental')}}
select *,current_timestamp as updated_at
from {{source('second','users')}}
{% if is_incremental() %}
where created_at >= (select max(updated_at) from {{this}})
{% endif %}