{% snapshot mock_orders %)

{% set new_schema = public + '_ snapshot' %}

{{

config(
    target_database='dev',
    target_schema='new_schema',
    unique_key='order_id',

    strategy= 'timestamp',
    updated_at='updated_at',
)
}}
select * from dev.public.mock_orders

{% endsnapshot %}