{% set z={"fct_orders":100,"int_order_items":200}%}


select count(*)
from {{ref('fct_orders')}}
having count(*)<{{z['fct_orders']}}