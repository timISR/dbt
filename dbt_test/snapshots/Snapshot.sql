{% snapshot orders_snapshot %}

{{
    config(
      target_database='dvdrental',
      target_schema='Snapshot',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ ref('my_own_dbt_model') }}

{% endsnapshot %}