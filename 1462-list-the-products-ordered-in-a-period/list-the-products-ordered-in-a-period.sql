# Write your MySQL query statement below

with cte as (
    select p.product_id, p.product_name product_name, sum(o.unit) over(partition by o.product_id) unit
    from Products p join Orders o on p.product_id = o.product_id
    where o.order_date like '2020-02-%%'
)


select distinct product_name, unit
from cte
where unit>=100