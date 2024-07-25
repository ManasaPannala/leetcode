# Write your MySQL query statement below


with cte as(
    select * 
    from FriendShip 
    where user1_id = 1 or user2_id = 1
)

select distinct page_id as recommended_page
from cte c join Likes l on c.user1_id = l.user_id or c.user2_id = l.user_id
where l.page_id not in (select page_id from Likes where user_id =1)