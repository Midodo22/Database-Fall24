select p.payment_type, count(p.order_id) as cnt
from payments as p
group by p.payment_type
having count(*) > 100
except(
    select pa.payment_type, count(pa.order_id)
    from payments as pa
    group by pa.payment_type
    order by count(*) desc
    limit 2
);