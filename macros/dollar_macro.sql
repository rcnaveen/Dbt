{% macro dollar_macro(column)%}
{{column}}*123
{% endmacro%}

{% macro generic_macro(src,model,column) %}
select *
{% if src=='tpch'%}
from {{source(src,model)}}
{% else %}
from {{ref(model)}}
{%endif%}
where {{column}}='F'
limit 10
{%endmacro%}