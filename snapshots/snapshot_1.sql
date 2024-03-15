{% snapshot check2 %}

    {{
        config(
            target_schema='snapshots',
          strategy='check',
          unique_key='order_key',
          check_cols=['priority_code']
        )
    }}
    select * from {{ref('fct_orders')}}

{% endsnapshot %}