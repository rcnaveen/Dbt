select {{dollar_macro('base_price')}} as pr
from {{ref('int_order_items')}}