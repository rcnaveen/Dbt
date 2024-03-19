select created_at,{{ dbt_date.convert_timezone("created_at", "Asia/Kolkata", "UTC") }} as IST
from {{source('second','users')}}
where created_at is not null