select 
    {{ dbt_utils.generate_surrogate_key(['customer_id','order_date']) }} as id
    ,customer_id
    ,order_date
    ,count(1) as total 
from {{ ref('stg_orders') }}
group by 1,2,3