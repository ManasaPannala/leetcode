# Write your MySQL query statement below
with cte as(
select p.product_name product_name, p.product_id product_id, o.order_id order_id, o.order_date order_date ,
rank() over(partition by p.product_id order by o.order_date desc) ranking
from Products p join Orders o on p.product_id = o.product_id
)

select product_name, product_id, order_id, order_date
from cte
where ranking =1
order by product_name, product_id, order_id