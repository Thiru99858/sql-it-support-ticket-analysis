-- BASIC EXPLORATORY ANALYSIS

-- 31. Total tickets
select count(*) from tickets;

-- 32. Tickets by priority
select priority,count(*)
from tickets
group by priority;

-- 33. Tickets by status
select status,count(*)
from tickets
group by status;

-- 34. Tickets by channel
select channel,count(*)
from tickets
group by channel;

-- 35. Tickets by category
select tc.category_name,count(t.ticket_id)
from ticket_categories tc
left join tickets t
on tc.category_id=t.category_id
group by tc.category_name
order by count(t.ticket_id) desc;

-- 36. Tickets by department
select d.dept_name,count(t.ticket_id)
from departments d
join users u on d.dept_id=u.dept_id
left join tickets t on u.user_id=t.user_id
group by d.dept_name
order by count(t.ticket_id) desc;

-- 37. Tickets by user location
select u.location,count(t.ticket_id)
from users u
left join tickets t
on u.user_id=t.user_id
group by u.location;

-- 38. Tickets by agent location
select a.location,count(t.ticket_id)
from agents a
left join tickets t
on a.agent_id=t.agent_id
group by a.location;

-- 39. Tickets by year
select year(created_datetime),count(*)
from tickets
group by year(created_datetime);

-- 40. Tickets by month
select year(created_datetime),
month(created_datetime),
count(*)
from tickets
group by year(created_datetime),month(created_datetime);
