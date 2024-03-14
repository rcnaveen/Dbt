{% macro we(src)%}
{{one(src)}}
{% endmacro %}
{% macro one(src)%}
{% set payment_methods=get_methods()%}

{% set le=payment_methods|length%}

select 
    order_id,
    {% for i in range(le)%}
    sum(case when payment_method='{{payment_methods[i]}}' then amount end) as {{payment_methods[i]}}_amount,
    {% endfor %}
    sum(amount) as total
from {{source('second',src)}}
group by 1
{% endmacro %}

{% macro get_methods()%}
{% set payment_methods=['bank','gift','credit']%}
{{ payment_methods}}

{% endmacro %}