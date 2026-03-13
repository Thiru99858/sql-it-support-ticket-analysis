-- PHASE 2: DATA QUALITY CHECKS

-- 11. NULL user_id
select * from tickets where user_id is null;

-- 12. NULL agent_id
select * from tickets where agent_id is null;

-- 13. NULL resolved_datetime
select count(*) from tickets where resolved_datetime is null;

-- 14. Resolved but datetime NULL
select count(*) from tickets
where status='Resolved'
and resolved_datetime is null;

-- 15. Open but resolved_datetime exists
select count(*) from tickets
where status='Open'
and resolved_datetime is not null;

-- 16. Duplicate ticket IDs
select ticket_id,count(*)
from tickets
group by ticket_id
having count(*)>1;

-- 17. Users without department
select count(*) from users
where dept_id is null;

-- 18. Agents without location
select count(*) from agents
where location is null;

-- 19. Invalid priorities
select count(*)
from tickets
where priority not in ('Low','Medium','High');

-- 20. Tickets created in future
select count(*)
from tickets
where created_datetime > curdate();

-- REFERENTIAL INTEGRITY

-- 21. Tickets with invalid users
select count(*)
from tickets t
left join users u
on t.user_id=u.user_id
where u.user_id is null;

-- 22. Tickets with invalid agents
select count(*)
from tickets t
left join agents a
on t.agent_id=a.agent_id
where a.agent_id is null;

-- 23. Invalid category_id
select count(*)
from tickets t
left join ticket_categories tc
on t.category_id=tc.category_id
where tc.category_id is null;

-- 24. Missing SLA rules
select count(*)
from tickets t
left join sla_rules s
on t.priority=s.priority
where s.priority is null;

-- 25. Departments with users but no tickets
select distinct d.dept_name
from departments d
join users u on d.dept_id=u.dept_id
left join tickets t on u.user_id=t.user_id
where t.ticket_id is null;

-- 26. Agents who never handled tickets
select distinct a.agent_id
from agents a
left join tickets t
on a.agent_id=t.agent_id
where t.ticket_id is null;

-- 27. Categories never used
select tc.category_name
from ticket_categories tc
left join tickets t
on tc.category_id=t.category_id
where t.category_id is null;

-- 28. Locations with users but no tickets
select distinct u.location
from users u
left join tickets t
on u.user_id=t.user_id
where t.ticket_id is null;

-- 29. Shifts with agents but no tickets
select a.shift,count(t.ticket_id)
from agents a
left join tickets t
on a.agent_id=t.agent_id
group by a.shift
having count(t.ticket_id)=0;

-- 30. SLA priorities not used
select s.priority
from sla_rules s
left join tickets t
on s.priority=t.priority
where t.priority is null;
