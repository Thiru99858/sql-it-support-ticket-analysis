-- PHASE 1: DATA UNDERSTANDING

-- 1. How many records are there in each table?
select count(*) as agents_count from agents;
select count(*) as dept_count from departments;
select count(*) as total_numbers from numbers;
select count(*) as priority_count from sla_rules;
select count(*) as category_count from ticket_categories;
select count(*) as ticket_count from tickets;
select count(*) as users_count from users;

-- 2. What columns and data types exist in each table?
describe agents;
describe departments;
describe numbers;
describe sla_rules;
describe ticket_categories;
describe tickets;
describe users;

-- 3. Earliest and latest ticket creation date
select min(created_datetime) as earliest_date,
max(created_datetime) as latest_date
from tickets;

-- 4. Distinct priorities
select distinct(priority) from tickets;

-- 5. Distinct ticket statuses
select distinct(status) from tickets;

-- 6. Ticket channels
select distinct(channel) from tickets;

-- 7. User locations
select distinct(location) from users;

-- 8. Agent shifts
select distinct(shift) from agents;

-- 9. Departments
select distinct(dept_name) from departments;

-- 10. Ticket categories
select distinct(category_name) from ticket_categories;
