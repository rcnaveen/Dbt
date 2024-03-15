select {{dollar_macro()}} as dollar_rate
from {{source('tpch','orders')}}