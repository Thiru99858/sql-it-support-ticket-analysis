CREATE OR REPLACE VIEW ticket_analysis_raw_thiru AS
SELECT
t.ticket_id,
t.agent_id,
a.agent_name,
d.dept_name,
t.priority,
tc.category_name,
t.channel,
t.created_datetime,
t.resolved_datetime,
timestampdiff(hour,t.created_datetime,coalesce(t.resolved_datetime,current_date())) as resolution_hours
FROM tickets t
join users u on t.user_id=u.user_id
join departments d on u.dept_id=d.dept_id
join agents a on t.agent_id=a.agent_id
join ticket_categories tc on t.category_id=tc.category_id;
