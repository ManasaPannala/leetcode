# Write your MySQL query statement below

select distinct c.title
from TVProgram t join Content c on t.content_id = c.content_id
where EXTRACT( YEAR_MONTH FROM t.program_date ) = 202006 and c.kids_content = 'Y' and c.content_type ='movies'