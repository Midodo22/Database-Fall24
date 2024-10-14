select count(p.order_id) as cnt
from payments as p
where p.order_id in(
    select o.order_id
    from orders as o
    where year(order_purchase_timestamp) = 2017 and o.customer_id in(
        select customer_id
        from customers
        where customer_state = 'RJ'
    )
)