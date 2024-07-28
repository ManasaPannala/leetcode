# Write your MySQL query statement below

select  trim(lower(product_name)) product_name, date_format(sale_date, '%Y-%m') sale_date, count(sale_id) total
from Sales
group by TRIM(LOWER(product_name)), EXTRACT(YEAR_MONTH FROM sale_date)
order by product_name, sale_date