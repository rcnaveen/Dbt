select * 
from {{ref('stg_tpch_orders')}}
where status_code not in ('P','O','F')