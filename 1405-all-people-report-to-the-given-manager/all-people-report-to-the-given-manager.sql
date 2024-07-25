# Write your MySQL query statement below

with cte as(
select employee_id 
from Employees
where manager_id = 1
),

cte2 as(
select employee_id
from Employees e
where manager_id in (select * from cte)
),

cte3 as(
select employee_id
from Employees e
where manager_id in (select * from cte2)
)

select * from cte3
where employee_id !=1