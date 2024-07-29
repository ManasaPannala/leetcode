# Write your MySQL query statement below

select DATE_FORMAT(order_date, '%Y-%m') month, count( distinct order_id) order_count, count(distinct customer_id) customer_count
from Orders
where invoice>20
group by DATE_FORMAT(order_date, '%Y-%m')