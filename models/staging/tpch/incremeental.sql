{{
    config(
        materialized='incremental',
        pre_hook="delete from PC_DBT_DB.DBT_NTHATIPALLI.INCREMEENTAL where id=1"
        )
    
}}
select *,current_timestamp as updated_at
from {{source('second','users')}}
{% if is_incremental() %}
where created_at >= (select max(updated_at) from {{this}})
{% endif %}