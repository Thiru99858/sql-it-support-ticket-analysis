-- Create Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Create Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    dept_id INT,
    location VARCHAR(100),
    join_date DATE
);

-- Create Agents Table
CREATE TABLE agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    shift VARCHAR(50),
    location VARCHAR(100),
    experience_years INT
);

-- Create Ticket Categories Table
CREATE TABLE ticket_categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Create SLA Rules Table
CREATE TABLE sla_rules (
    priority VARCHAR(50),
    max_resolution_hours INT
);

-- Create Numbers Table (used to generate large data)
CREATE TABLE numbers (
    n INT PRIMARY KEY
);

-- Create Tickets Table
CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    user_id INT,
    agent_id INT,
    category_id INT,
    priority VARCHAR(50),
    status VARCHAR(50),
    created_datetime DATETIME,
    resolved_datetime DATETIME,
    channel VARCHAR(50)
);
