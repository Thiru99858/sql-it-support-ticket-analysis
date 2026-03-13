-- FINAL DATASET FOR REPORTING (POWER BI / DASHBOARDS)

select
    ticket_id,
    agent_id,
    agent_name,
    dept_name,
    category_name,
    priority,
    channel,
    created_datetime,
    resolved_datetime,
    resolution_hours,
    sla_flag,
    resolution_speed
from ticket_analysis_raw_thiru;
