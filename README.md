# Target Business Case – SQL Analysis

## Project Overview

This project is an end-to-end SQL-driven business analysis of a large Brazilian E-commerce dataset (Target).

The objective is to analyze customer behavior, order trends, revenue movement, logistics performance, and payment patterns using advanced SQL techniques.

The analysis is designed from a business decision-making perspective, not just query writing, with clear insights and recommendations for each section.

## Business Objective
The primary business goals of this analysis are to:

↠ Understand order growth trends and seasonality

↠ Identify top-performing and under-penetrated states

↠ Analyze revenue, pricing, and freight cost distribution

↠ Evaluate delivery performance vs estimated timelines

↠ Assess customer payment behavior and preferences

↠ Provide actionable insights to improve operations, logistics, and customer experience

## Dataset Information

Domain: E-commerce (Brazil)

Time Range: September 2016 – October 2018

Granularity: Order-level, item-level, payment-level

Source: Public Brazilian E-commerce dataset

Key Tables Used:

customers

orders

order_items

payments

geolocation

## Database Schema

The relational schema follows a normalized structure:

customers → customer details & location

orders → order lifecycle timestamps & status

order_items → product price & freight values

payments → payment type, installments & value

geolocation → mapping ZIP codes to states

Primary and foreign keys are used to enable multi-table joins and business aggregations.

## Business Questions Addressed

### 1️⃣ Exploratory Analysis

↠  What is the structure and data type of each table?

↠ What is the overall time range of the orders?

↠ How many cities and states does the business operate in?

### 2️⃣ Order Trends & Seasonality

↠ Is there a year-on-year growth trend in orders?

↠ Do orders show monthly seasonality?

↠ What time of day do customers place most orders?

### 3️⃣ Regional (State-wise) Analysis

↠  How do orders evolve month-on-month across states?

↠ How are customers distributed across states?

↠ Which states are dominant vs under-penetrated?

### 4️⃣ Revenue & Cost Analysis

↠ How much did order value grow from 2017 → 2018?

↠ What is the total & average order price per state?

↠ How does freight cost vary across states?

### 5️⃣ Logistics & Delivery Performance

↠ What is the actual delivery time per order?

↠ Which states have late or early deliveries?

↠ Which states have the fastest vs slowest delivery times?

### 6️⃣ Payment Behavior

↠ How do payment modes change month-on-month?

↠ What payment types dominate (credit card, UPI, etc.)?

↠ How many customers prefer installments vs full payment?

##  SQL Concepts & Techniques Used

This project demonstrates intermediate to advanced SQL skills, including:

→ INNER JOIN, multi-table joins

→ CTE (WITH clause)

→ Window functions: LAG(), ROW_NUMBER()

→ Date functions: EXTRACT(), DATE_DIFF()

→ Conditional logic using CASE WHEN

→ Aggregations: COUNT, SUM, AVG

→ Sorting & filtering for business insights

## Key Insights (Highlights)

→ Orders grew exponentially in 2017, followed by sustained growth in 2018

→ Clear monthly seasonality, with peaks around Oct–Nov

→ Afternoon (13–18 hrs) is the most active order placement window

→ States like SP, RJ, MG dominate orders and revenue

→ Several states show logistics inefficiencies with high freight or delivery delays

→ Credit cards dominate payments, while UPI shows consistent adoption

→ Most customers prefer full payment or short EMIs (1–2 installments)

## 📁 Repository Structure

```text
target-business-case-sql-analysis/
│
├── data/        # Raw CSV datasets used for analysis
├── sql/         # All SQL scripts (EDA, trends, revenue, logistics, payments)
├── insights/    # Business insights and written interpretations
├── visuals/     # Charts or screenshots used for reporting
└── README.md    # Project documentation
```

## How to Use This Project

→ Import the CSV files into MySQL / PostgreSQL

→ Create tables using the provided schema

→ Execute SQL scripts section-wise

→ Review query outputs and insights

→ Use insights for business storytelling or interviews

## Future Enhancements

→ Add indexes to optimize query performance

→ Convert analysis into Power BI / Tableau dashboards

→ Add customer cohort & RFM analysis

→ Perform churn and repeat-purchase analysis

→ Write a business case presentation (PPT) for stakeholders

👤 Author

Karan Agarwal

Aspiring Data Analyst / Data Scientist

Skilled in SQL, Python, Data Analysis & Business Problem-Solving

https://www.linkedin.com/in/karan-agarwal-jain94    