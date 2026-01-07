-- =====================================================
-- Customer Churn Analysis
-- File: 01_data_exploration.sql
-- Description: Initial data exploration of raw churn data
-- =====================================================

-- Total number of customers
SELECT
  COUNT(*) AS total_customers
FROM `customer_churn.telco_churn_raw`;
