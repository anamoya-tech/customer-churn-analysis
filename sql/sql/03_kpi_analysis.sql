-- =====================================================
-- 03. KPI Analysis
-- Project: Customer Churn Analysis
-- Dataset: telco_churn_clean
-- Purpose: Calculate core business KPIs related to churn
-- =====================================================

-- 1. Overall churn rate
SELECT
  COUNT(*) AS total_customers,
  SUM(churn_flag) AS churned_customers,
  ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM `customer_churn.telco_churn_clean`;


-- 2. Average monthly charges (churned vs retained)
SELECT
  churn_flag,
  ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM `customer_churn.telco_churn_clean`
GROUP BY churn_flag;


-- 3. Average tenure (churned vs retained)
SELECT
  churn_flag,
  ROUND(AVG(tenure), 1) AS avg_tenure_months
FROM `customer_churn.telco_churn_clean`
GROUP BY churn_flag;


-- 4. Churn rate by contract type
SELECT
  Contract,
  COUNT(*) AS total_customers,
  SUM(churn_flag) AS churned_customers,
  ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM `customer_churn.telco_churn_clean`
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;


-- 5. Revenue at risk (monthly)
SELECT
  ROUND(SUM(monthly_charges), 2) AS monthly_revenue_at_risk
FROM `customer_churn.telco_churn_clean`
WHERE churn_flag = 1;
