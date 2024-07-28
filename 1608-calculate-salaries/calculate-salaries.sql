# Write your MySQL query statement below

with cte as(
select *, max(salary) over(partition by company_id) maxi
from Salaries
)


select company_id, employee_id, employee_name,
case when maxi<1000 then salary
     when maxi between 1000 and 10000 then round(salary - salary*24/100)
     when maxi>10000 then round(salary - salary*49/100)
     else salary
     end salary
from cte



