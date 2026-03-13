# IT Support Ticket Analysis (SQL Data Analyst Project)

## Project Overview
This project simulates a real-world **Data Analyst workflow using SQL** to analyze IT Support Ticket data.  
The dataset contains **10,000 ticket records** along with related tables such as agents, users, departments, ticket categories, and SLA rules.

The main goal of this project is to **explore the dataset, validate data quality, perform business analysis, detect SLA breaches, and prepare a final dataset ready for reporting tools like Power BI or Tableau.**

---

## Dataset Description
The dataset represents a simplified **IT Support Ticketing System**.

Tables used in this project:

- **tickets** – Contains support ticket records
- **agents** – Support agents handling tickets
- **users** – Employees who raise tickets
- **departments** – Departments where users belong
- **ticket_categories** – Types of issues reported
- **sla_rules** – SLA resolution rules based on ticket priority

Dataset size: **10,000 ticket records**

---

## Project Objectives
The main objectives of this analysis are:

- Understand the structure of the dataset
- Validate data quality and detect inconsistencies
- Perform business-level ticket analysis
- Identify SLA breaches and service performance
- Analyze agent performance
- Detect unusual patterns or outliers
- Prepare a **clean analytical dataset for reporting**

---

## Key SQL Concepts Used
This project covers important SQL concepts used in **Data Analyst roles**:

- Data exploration and validation
- JOIN operations (INNER JOIN, LEFT JOIN)
- Aggregations (COUNT, AVG, SUM)
- Conditional logic using **CASE statements**
- Window functions:
  - ROW_NUMBER
  - DENSE_RANK
  - LAG
  - Running totals
- Date and time analysis
- SLA breach detection
- Data classification and KPI validation
- Creating analytical **views for reporting**

---

## Analysis Performed

### 1. Data Understanding
Initial exploration of the dataset to understand structure and volume.

Examples:
- Total records in each table
- Distinct ticket priorities
- Ticket statuses and channels
- Ticket creation date range

---

### 2. Data Validation
Ensuring the dataset is reliable before performing analysis.

Checks performed:
- NULL value detection
- Duplicate ticket ID validation
- Invalid timestamp detection
- Referential integrity checks
- Data consistency validation

---

### 3. Business Analysis
Understanding ticket distribution and operational patterns.

Examples:
- Tickets by department
- Tickets by category
- Tickets by channel
- Tickets by location
- Tickets by priority

---

### 4. SLA Analysis
Evaluating service performance against SLA rules.

Examples:
- SLA breached tickets
- SLA breach percentage
- SLA breaches by agent
- SLA breaches by department
- SLA breaches by category
- Tickets resolved within SLA

---

### 5. Agent Performance Analysis
Evaluating support agent productivity.

Examples:
- Tickets handled per agent
- Average resolution time per agent
- Ranking agents by ticket volume
- Identifying top agents by priority handling

---

### 6. Time-Based Analysis
Analyzing ticket trends over time.

Examples:
- Tickets by year
- Tickets by month
- Daily ticket creation trends
- Running total of tickets
- Month-over-month ticket growth

---

### 7. Advanced SQL Techniques
Window functions were used to derive deeper insights.

Examples:
- Ranking agents using ROW_NUMBER and DENSE_RANK
- Running ticket totals using window functions
- Month-over-month growth analysis
- Comparing resolution times between tickets

---

### 8. Analytical View Creation
An analytical SQL view was created to combine all relevant data for reporting.

The view includes:

- Ticket information
- Agent details
- Department details
- Category details
- Resolution time calculation
- SLA breach flags
- Resolution speed classification

This view serves as a **final dataset ready for dashboards and reporting tools**.

---

## Example Business Questions Answered

- Which departments generate the most support tickets?
- Which ticket categories occur most frequently?
- Which agents resolve tickets the fastest?
- What percentage of tickets breach SLA?
- Which channels are most used for raising tickets?

---

## Tools Used

- **SQL (MySQL)**
- GitHub for project documentation

---

## Learning Outcome

Through this project, the following practical data analysis skills were developed:

- Writing analytical SQL queries
- Performing data validation checks
- Building business metrics using SQL
- Working with window functions
- Preparing datasets for reporting and dashboards

---

## Future Improvements

Possible extensions of this project:

- Build a **Power BI dashboard** using the analytical dataset
- Perform deeper trend analysis
- Optimize queries for large datasets
- Apply predictive analysis on ticket resolution time

---

## Project Summary

This project demonstrates **real-world SQL data analysis techniques used by Data Analysts in production environments**, including data validation, business analysis, SLA monitoring, window functions, and preparation of reporting-ready datasets.
