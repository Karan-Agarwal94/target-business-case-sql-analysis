# Target Business Case – SQL Analysis

### Project Overview

- This project presents an end-to-end SQL-based business analysis of a Brazilian e-commerce platform, covering over 99K orders across 27 states.

- The objective is not just to analyze data, but to translate SQL insights into meaningful business decisions around growth, logistics, revenue efficiency, and customer payment behavior.

- All analysis was executed using MySQL, with each analytical theme modularized into separate SQL and insight files.

### Business Objective

The primary goals of this analysis are to:

- Understand order growth patterns and seasonality

- Identify geographical concentration of customers, revenue, and logistics costs

- Evaluate delivery performance and reliability

- Analyze payment method preferences and installment behavior

- Derive actionable business recommendations backed by data

### Dataset Information

- **Domain:** E-commerce (Brazil)

- **Time Period:** September 2016 – October 2018

- **Orders:** ~99,441

- **Geographic Coverage:** 4,119 cities across 27 states

- **Core Tables Used:**

  - customers
  - orders
  - order_items
  - payments
  - products
  - sellers


### Database & Tooling

- **Database:** MySQL

- **Query Style:** Modular SQL files

- **Key Techniques Used:**

  - Multi-table joins
  - Window functions
  - Date & time analysis
  - Aggregations & grouping
  - Data validation & sanity checks

### Repository Structure

```text
target-business-case-sql-analysis/
│
├── sql/
│   ├── 00_project_execution_guide.sql
│   ├── 01_schema_and_data_overview.sql
│   ├── 02_orders_time_trend_analysis.sql
│   ├── 03_geographical_analysis.sql
│   ├── 04_revenue_and_freight_analysis.sql
│   ├── 05_delivery_performance_analysis.sql
│   └── 06_payment_behavior_analysis.sql
│
├── insights/
│   ├── 01_schema_and_data_overview.md
│   ├── 02_orders_time_trend_analysis.md
│   ├── 03_geographical_analysis.md
│   ├── 04_revenue_and_freight_analysis.md
│   ├── 05_delivery_performance_analysis.md
│   └── 06_payment_behavior_analysis.md
│
├── data/
├── visuals/
└── README.md
```

### Key Insights (Executive Summary)

#### Order Growth & Seasonality

- Orders increased sharply after 2016, indicating rapid platform adoption.

- Monthly order volumes show clear seasonality, with consistent peaks and dips.

#### Geographical Concentration

- Customer and order volumes are heavily concentrated in states such as SP, RJ, and MG.

- Several states remain under-penetrated, presenting growth opportunities.

#### Revenue & Freight

- SP alone generates over R$5.2M in revenue despite low average item prices.

- Remote states incur freight costs exceeding 24–28% of revenue, versus 13–17% in major states.

- This highlights a strong logistics cost imbalance across regions.

#### Delivery Performance

- Delivery times range from 1 day to over 200 days in extreme cases.

- Some orders arrived 147 days earlier than estimated, while others were 188 days late.

- Northern states face persistent delays; southeastern states benefit from faster delivery and infrastructure.

#### Payment Behavior

- Credit cards dominate with over 76K orders.

- UPI is a strong second (~20K orders), indicating growing digital adoption.

- Most customers prefer single or short-term installments, with notable spikes at 8 and 10 EMIs.

📌 Business Recommendations:

↠ Prioritize logistics efficiency and customer retention in high-revenue states.

↠ Recalibrate delivery estimate models using historical state-level performance.

↠ Optimize freight costs in remote regions via regional warehouses or local partners.

↠ Strengthen UPI adoption through targeted incentives and smoother checkout.

↠ Promote popular EMI plans strategically without expanding long-term credit risk.

### How to Use This Project

1. Load CSV data into MySQL

2. Follow execution order from:
***sql/00_project_execution_guide.sql***

3. Run each analysis file sequentially

4. Refer to corresponding insights files for interpretations

👤 Author

**Karan Agarwal**

Aspiring Data Analyst / Data Scientist  

**Skills:** SQL, Python, Data Analysis, Business Analytics  

🔗 LinkedIn: https://www.linkedin.com/in/karan-agarwal-jain94   