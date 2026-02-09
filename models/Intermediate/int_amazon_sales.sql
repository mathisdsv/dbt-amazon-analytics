select * except(review_count),  
CASE
    WHEN rating < 3 THEN '🔴 Mauvais'
    WHEN rating < 4  THEN '🟡 Moyen'
    ELSE '🟢 Excellent'
END as rating_cat,
from {{ ref('stg_raw_amazon__sales') }}
order by review_count asc 