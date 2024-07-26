# Write your MySQL query statement below

with cte as(
select stock_name, sum(price) tb
from Stocks
where operation ='Buy'
group by stock_name
),

cte2 as(
select stock_name, sum(price) ts
from Stocks
where operation='Sell'
group by stock_name
)

select c.stock_name, ts-tb capital_gain_loss
from cte c join cte2 c2 on c.stock_name = c2.stock_name