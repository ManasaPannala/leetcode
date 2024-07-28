# Write your MySQL query statement below

with cte as(
select o.customer_id id, o.order_date date, p.price price, o.quantity quantity
from Product p join Orders o on p.product_id = o.product_id 
-- where EXTRACT( YEAR_MONTH FROM o.order_date = 202006) or EXTRACT( YEAR_MONTH FROM o.order_date = 202007)
)

select  cu.customer_id, cu.name
from cte c join customers cu on c.id = cu.customer_id
group by cu.customer_id
having sum(
    if(Extract(YEAR_MONTH from c.date) = 202006, c.price,0)*c.quantity 
)>=100
and 
sum(
    if(Extract(YEAR_MONTH from c.date) = 202007, c.price, 0) *c.quantity
)>=100
