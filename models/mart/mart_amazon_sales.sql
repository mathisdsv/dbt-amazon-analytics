select
product_category,
COUNT(DISTINCT order_id) AS tot_orders,  
COUNT(DISTINCT product_id) AS unique_products,
SUM(quantity_sold) AS tot_quantity,
ROUND(AVG(discounted_price),2) AS avg_price, 
ROUND(SUM(total_revenue),2) AS tot_revenue,
ROUND(AVG(rating),2) AS avg_rating,
ROUND(SUM(total_revenue) / COUNT(DISTINCT order_id),2) as avg_order_value,
from {{ ref('int_amazon_sales') }}
GROUP BY product_category