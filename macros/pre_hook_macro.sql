{% macro pre_hook_macro(value)%}
insert into PC_DBT_DB.DBT_NTHATIPALLI.users (id) values({{value}})
{% endmacro %}