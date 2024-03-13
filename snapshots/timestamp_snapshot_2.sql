{% snapshot timestamp_snapshot_2 %}

    {{
        config(
        target_schema='snapshots',
          strategy='timestamp',
          unique_key='id',
          updated_at="updated_at"
        )
    }}
    select * from {{ref('incremeental')}}

{% endsnapshot %}