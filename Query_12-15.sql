use mytDatabase
select p.name , c.name
from products as p
join categories as c on c.category_id = p.category_id

SELECT c.first_name , c.last_name,  format(sum((1 + tax) * oi.sell_price),'C') as 'Shopping Cart Total' ,count(*) as 'Items in Cart'
FROM orders as o
join order_items as oi on oi.order_id = o.order_id
join products as p on p.product_id = oi.product_id
join categories as ca on ca.category_id = p.category_id
join customers as c on o.customer_id = c.customer_id
group by c.first_name , c.last_name 
