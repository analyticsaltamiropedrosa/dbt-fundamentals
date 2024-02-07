select 
    id as payment_id
    ,orderid as order_id
    ,paymentmethod
    ,status
    ,{{ cents_to_dollars('amount') }} as amount
from `dbt-tutorial.stripe.payment`



