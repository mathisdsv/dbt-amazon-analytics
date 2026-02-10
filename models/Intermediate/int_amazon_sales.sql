select
order_id, 
date_date, 
product_id,
product_category, 
quantity_sold,
price,
discount_percent, 
discounted_price,
CASE
    WHEN discount_percent = 0 THEN 'No Discount'
    WHEN discount_percent <= 10  THEN '1-10%'
    WHEN discount_percent < 20  THEN '11-20%'
    ELSE '21-30%'
END as discount_bucket,
total_revenue, 
customer_region, 
payment_method,
rating,  
CASE
    WHEN rating < 3 THEN '🔴 Bad'
    WHEN rating < 4  THEN '🟡 Average'
    ELSE '🟢 Excellent'
END as rating_cat,
from {{ ref('stg_raw_amazon__sales') }} 
