select pr.seller_id, count(*) as cnt
from(
    select o.seller_id
    from order_items as o
    where o.price > 150
) as pr
group by pr.seller_id
having count(*) > 100
order by count(*) desc
limit 3;