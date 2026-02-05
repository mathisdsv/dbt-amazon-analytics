select * 
from {{ source('raw_amazon', 'sales') }}
