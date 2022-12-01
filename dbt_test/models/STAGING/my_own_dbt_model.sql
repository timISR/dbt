{{ config(materialized='table') }}

WITH FilmCat as(

select COUNT(f.title) AS Anzahl, ctg.name  
from film f
JOIN film_category c ON c.film_id = f.film_id
JOIN category ctg ON ctg.category_id = c.category_id
GROUP BY ctg.name
)

SELECT * from FilmCat
ORDER BY Anzahl DESC