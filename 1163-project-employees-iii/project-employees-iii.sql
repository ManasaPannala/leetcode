# Write your MySQL query statement below

with cte as (
select e.employee_id employee_id, p.project_id project_id, rank() over (partition by p.project_id order by e.experience_years desc) ranking
from Employee e join Project p on e.employee_id = p.employee_id
)

select project_id, employee_id
from cte
where ranking =1
