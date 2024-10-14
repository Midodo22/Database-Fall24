-- order_delivered_customer_date - carrier
select order_id
from orders
order by (order_delivered_customer_date - order_delivered_carrier_date) desc
limit 3;