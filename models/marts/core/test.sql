select * from {{ref('fct_orders')}}
where order_key={{var('id_amt')}}