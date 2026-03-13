-- SLA ANALYSIS

-- 51 Tickets handled per agent
select a.agent_name,count(t.ticket_id)
from agents a
left join tickets t
on a.agent_id=t.agent_id
group by a.agent_name;

-- 52 Avg resolution time per agent
select a.agent_name,
avg(timestampdiff(hour,t.created_datetime,t.resolved_datetime))
from agents a
join tickets t
on a.agent_id=t.agent_id
where t.resolved_datetime is not null
group by a.agent_name;

-- 53 High priority tickets by agent
select a.agent_id,count(t.ticket_id)
from agents a
left join tickets t
on a.agent_id=t.agent_id
where t.priority='High'
group by a.agent_id;

-- 54 SLA breached tickets
select t.ticket_id
from tickets t
join sla_rules s
on t.priority=s.priority
where timestampdiff(hour,t.created_datetime,t.resolved_datetime) > s.max_resolution_hours;

-- 55 SLA breach %
select
count(case when timestampdiff(hour,t.created_datetime,t.resolved_datetime)>s.max_resolution_hours then 1 end)
/
count(t.ticket_id)*100
from tickets t
join sla_rules s
on t.priority=s.priority;
