
-- Use the `ref` function to select from other models

select *
from {{ ref('my_own_dbt_model') }}
where anzahl = 69
