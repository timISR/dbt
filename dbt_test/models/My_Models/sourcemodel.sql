{{config(materialized='table')}}

SELECT title,length AS length_in_min,film_id,store_id
from {{source('postgres','film')}}

left join {{source('postgres','inventory')}} using (film_id, last_update)
