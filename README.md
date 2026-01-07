# customer-churn-analysis
End-to-end SQL-driven customer churn analysis project using BigQuery and Tableau.


## Data Exploration

Initial exploration of the raw dataset revealed the following:

- The dataset contains 7,043 customer records.
- No missing values were found in the `TotalCharges` column.
- The `TotalCharges` field is stored as a STRING and requires type conversion.
- Approximately 26–27% of customers have churned.

## Data Cleaning

The raw dataset was transformed into a clean analytical table (`telco_churn_clean`) to ensure consistency and reliability for analysis.

Key steps performed:
- Converted financial fields (`MonthlyCharges`, `TotalCharges`) to numeric data types.
- Identified non-numeric blank values in `TotalCharges` and standardized them using `TRIM` and `NULLIF` before applying safe type casting.
- Resulted in 11 NULL values in `TotalCharges`, corresponding to customers with zero tenure.
- Created a binary churn flag (`churn_flag`) to simplify churn analysis.
- Preserved the original raw table and created a separate clean table following best practices.

## Key KPIs & Insights

- The overall churn rate is approximately 26–27%, indicating a significant retention challenge.
- Churned customers have higher average monthly charges compared to retained customers.
- Customers who churn tend to have significantly shorter tenure.
- Month-to-month contracts show the highest churn rate, while long-term contracts have much lower churn.
- Monthly revenue at risk from churned customers represents a substantial portion of total revenue.
