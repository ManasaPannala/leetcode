# Write your MySQL query statement below

with cte as(
select project_id, rank() over(order by count(project_id) desc) as ranking
from Project 
group by project_id
)

select project_id
from cte where ranking =1
order by project_id;


