select order_id
from orders
except
select order_id
from payments;