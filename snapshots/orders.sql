{% snapshot orders_snapshot %}
    {{
        config(
            target_database='ANALYTICS',
            target_schema='DBT_YHURRIBUNCE',
            unique_key='orderid',
            strategy='timestamp',
            updated_at='last_updated'
        )
    }}
    select * from {{ ref('raw_orders') }}
 {% endsnapshot %}