{{ dbt_utils.deduplicate(
    relation=source('tpch', 'orders'),
    partition_by='o_orderkey',
    order_by="o_orderkey desc",
   )
}}