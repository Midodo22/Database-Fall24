select customer_city as city
from customers
where customer_state like 'RJ'
group by customer_city
order by count(customer_city) desc
limit 3;