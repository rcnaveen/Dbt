-- {%set z=["one","two"]%}

-- {% for a in z%}
-- select all from {{1+1}}
-- {% endfor%}

{# initialise the dictionary #}
{% set customer = {"Name":"Peter","Surname": "Smith"}	%}
{# Output the value stored by the key Name #} 

{% set x="Name"%}
{% set z=x %}
'{{ customer["Name"] }}'
{{ customer[z] }}
{{z}}

{% set payment_methods=['bank','gift','credit']%}

{% set le=payment_methods|length%}

select 
    order_id,
    {% for i in range(le)%}
    sum(case when payment_method='{{payment_methods[i]}}' then amount end) as {{payment_methods[i]}}_amount,
    {% endfor %}
    sum(amount) as total
from {{source('second','ORDER_TEST')}}
group by 1

-- select
--     order_id,
--     {% for payment_method in payment_methods %}
--     sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
--     {% endfor %}
--     sum(amount) as total_amount
-- from {{source('second','ORDER_TEST')}}
-- group by 1