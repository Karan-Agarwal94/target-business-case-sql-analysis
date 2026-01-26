# Target Business Case – SQL, Excel & Power BI Analysis

## Project Overview

This project presents an end-to-end data analysis of a Brazilian e-commerce platform, covering ~99K orders across 27 states, using SQL, Excel, and Power BI.

The objective is not just to analyze data, but to translate raw transactional data into actionable business insights related to:

- Order growth & seasonality

- Regional revenue concentration

- Delivery performance & logistics efficiency

- Customer payment behavior

The analysis follows a complete analytics pipeline:
MySQL → Excel Aggregations → Power BI Dashboard.

## 🎯 Business Objectives

The key goals of this analysis are to:

- Understand order growth patterns and seasonality

- Identify geographical concentration of customers and revenue

- Evaluate delivery performance and delays across states

- Analyze payment method preferences and installment behavior

- Build an interactive dashboard for business stakeholders

## Dataset Information

**Domain**: Brazilian E-commerce

**Time Period**: September 2016 – October 2018

**Orders**: ~99,441

**Geographic Coverage**: 4,119 cities across 27 states

**Core Tables Used** :

- customers

- orders

- order_items

- payments

- products

- sellers

⚠️ Raw data is intentionally excluded from the repository and ignored via .gitignore.

## Tools & Technologies

**Database**: MySQL

**Querying & Analysis** : SQL

**Data Aggregation**: Microsoft Excel

**Data Visualization**: Power BI

**Version Control**: Git & GitHub

**Key SQL Techniques Used** :

- Multi-table joins

- Window functions

- Date & time analysis

- Aggregations & grouping

- Data validation & sanity checks

## Power BI Dashboard Overview

The final insights are presented through an interactive Power BI dashboard combining KPIs, trends, regional analysis, and payment behavior.

**Dashboard Preview** :

- 🔹 Overall Dashboard

- 🔹 State-wise Interaction (Example: Sao Paulo (SP))

- 🔹 Year-wise Trend Analysis (Example: 2017)

## Key Insights:

### Order Growth & Seasonality

- Strong platform growth observed post-2016.

- Clear monthly seasonality with recurring peaks and dips.

- 2017 shows the most stable and accelerated growth pattern.

### Geographical Concentration

- Revenue and order volume are heavily concentrated in SP, RJ, and MG.

- Sao Paulo alone contributes ~45% of total revenue.

- Several states remain under-penetrated, indicating growth opportunities.

### Revenue & Logistics

- SP generates over R$5.9M in revenue despite lower average item value.

- Remote states incur freight costs as high as 24–28% of revenue, compared to 13–17% in major states.

- Logistics efficiency is highly uneven across regions.

### Delivery Performance

- ~91.9% of orders are delivered on time.

- Delivery delays are more frequent in northern and remote states.

- Significant variance between estimated vs actual delivery timelines exists.

### Payment Behavior

- Credit Cards dominate (~74%), followed by UPI (~19%).

- Most customers prefer short-term or single-installment payments.

- EMI spikes observed at 8 and 10 installments, indicating popular financing thresholds.

## Business Recommendations

- Prioritize logistics optimization and customer retention in top-revenue states.

- Recalibrate delivery estimate models using historical, state-level performance.

- Reduce freight burden in remote states via regional warehouses or local partners.

- Strengthen UPI adoption with targeted offers and smoother checkout experience.

- Promote popular EMI options strategically without increasing long-term credit risk.


## 📁 Repository Structure
``` text
target-business-case-sql-analysis/
│
├── sql/              # Modular SQL analysis files
├── insights/         # Written business interpretations
├── data_exports/     # Excel aggregated outputs used in Power BI 
├── images/           # Dashboard and Excel charts screenshots (.png file)
├── power_bi/         # Power BI (.pbix file)
├── .gitignore
└── README.md
```

## How to Use This Project

- Load the dataset into MySQL

- Follow the execution order in sql/00_project_execution_guide.sql

- Run analysis files sequentially

- Review insights in the insights/ folder

- Explore the Power BI dashboard for interactive analysis

## 👤 Author

***Karan Agarwal***

Aspiring Data Analyst / Data Scientist

**Skills**: SQL, Excel, Power BI, Data Analysis, Business Analytics

🔗 LinkedIn:
https://www.linkedin.com/in/karan-agarwal-jain94