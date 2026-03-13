-- Insert Departments
INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Operations'),
(5,'Sales'),
(6,'Marketing'),
(7,'Admin'),
(8,'Support'),
(9,'Security'),
(10,'Procurement');

-- Insert Ticket Categories
INSERT INTO ticket_categories VALUES
(1,'Software Issue'),
(2,'Hardware Issue'),
(3,'Network Issue'),
(4,'Email Problem'),
(5,'Login Issue'),
(6,'Access Request'),
(7,'System Crash'),
(8,'Other');

-- Insert SLA Rules
INSERT INTO sla_rules VALUES
('Low',72),
('Medium',48),
('High',24);

-- Generate numbers from 1 to 10000
INSERT INTO numbers
WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 10000
)
SELECT n FROM seq;

-- Generate Users (1000 users)
INSERT INTO users
SELECT
n AS user_id,
CONCAT('User_',n),
FLOOR(1 + RAND()*10),
ELT(FLOOR(1 + RAND()*5),'Bangalore','Hyderabad','Chennai','Mumbai','Pune'),
DATE_ADD('2018-01-01', INTERVAL FLOOR(RAND()*2000) DAY)
FROM numbers
WHERE n <= 1000;

-- Generate Agents (500 agents)
INSERT INTO agents
SELECT
n AS agent_id,
CONCAT('Agent_',n),
ELT(FLOOR(1 + RAND()*3),'Morning','Evening','Night'),
ELT(FLOOR(1 + RAND()*5),'Bangalore','Hyderabad','Chennai','Mumbai','Pune'),
FLOOR(1 + RAND()*10)
FROM numbers
WHERE n <= 500;

-- Generate Tickets (10000 tickets)
INSERT INTO tickets
SELECT
n AS ticket_id,
FLOOR(1 + RAND()*1000),
FLOOR(1 + RAND()*500),
FLOOR(1 + RAND()*8),
ELT(FLOOR(1 + RAND()*3),'Low','Medium','High'),
ELT(FLOOR(1 + RAND()*3),'Open','In Progress','Resolved'),
DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND()*365) DAY),
DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND()*365) DAY),
ELT(FLOOR(1 + RAND()*3),'Email','Phone','Portal')
FROM numbers
WHERE n <= 10000;
