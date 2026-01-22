# Schema & Data Overview – Key Insights

## Dataset Scope
- The dataset represents a complete e-commerce workflow, including customers,
  orders, order items, products, sellers, reviews, and payments.
- Orders span from September 2016 to October 2018, covering approximately
  two years of business activity.

## Order Status Health
- The majority of orders were successfully delivered (~97K orders).
- A smaller share of orders were canceled or marked as unavailable (~1K),
  which is expected in real-world e-commerce operations.

## Geographic Coverage
- Customers are distributed across 4,119 cities and all 27 states of Brazil,
  indicating nationwide rather than region-specific coverage.

## Data Completeness
- Approximately 97% of orders contain actual delivery timestamps, while
  estimated delivery dates are available for 100% of orders.
- Missing actual delivery timestamps are confined to non-delivered orders,
  ensuring no data leakage in delivery performance analysis.

## Data Integrity Checks
- No significant duplication of order IDs was detected.
- Price and freight values fall within reasonable ranges, suggesting no
  obvious data corruption or extreme outliers at an initial level.

## Overall Assessment
- The dataset is sufficiently clean, complete, and well-structured to support
  deeper analysis of order trends, revenue distribution, logistics performance,
  and payment behavior.