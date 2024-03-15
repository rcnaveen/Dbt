select {{dollar_macro('o_totalprice')}} as dollar_rate
from {{source('tpch','orders')}}