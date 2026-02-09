select
order_id,
CAST(order_date AS DATE) as date_date,
product_id,
product_category,
price,
discount_percent,
quantity_sold,
customer_region,
payment_method,
rating,
review_count,
discounted_price,
total_revenue,
from {{ source('raw_amazon', 'sales') }}
where total_revenue is not null