select c.customer_state as state, count(c.customer_state) as cnt
from customers as c
inner join(
    select o.customer_id
    from orders as o
    where o.order_status != 'delivered')  as id
on c.customer_id = id.customer_id
group by c.customer_state;