# Write your MySQL query statement below

with cte as(
select o.customer_id customer_id, o.product_id product_id, p.product_name product_name, 
rank() over(partition by o.customer_id order by count(o.product_id) desc) rankp
from Orders o join Products p on o.product_id = p.product_id
group by o.customer_id, o.product_id
)

select customer_id, product_id, product_name
from cte c 
where rankp = 1
