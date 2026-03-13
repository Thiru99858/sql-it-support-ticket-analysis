-- WINDOW FUNCTIONS

-- 61 Rank agents by tickets handled
select row_number() over(order by ticket_count desc) as rank,
ticket_count,
agent_id
from
(
select agent_id,count(*) as ticket_count
from tickets
group by agent_id
) a;

-- 62 Rank departments
select dense_rank() over(order by ticket_count desc) as rank,
dept_name,
ticket_count
from
(
select d.dept_name,count(*) as ticket_count
from tickets t
join users u on t.user_id=u.user_id
join departments d on u.dept_id=d.dept_id
group by d.dept_name
) a;

-- 63 Top 3 agents per priority
select *
from
(
select row_number() over(partition by priority order by ticket_count desc) as rank,
agent_id,
priority,
ticket_count
from
(
select agent_id,priority,count(*) as ticket_count
from tickets
group by agent_id,priority
) a
) b
where rank<=3;
