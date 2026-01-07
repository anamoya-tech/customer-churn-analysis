-- =====================================================
-- 01. Data Exploration
-- Project: Customer Churn Analysis
-- Dataset: telco_churn_raw
-- Purpose: Understand dataset size, structure and data quality
-- =====================================================

-- 1. Dataset size
SELECT
  COUNT(*) AS total_customers
FROM `customer_churn.telco_churn_raw`;

-- 2. Column names and data types
SELECT
  column_name,
  data_type
FROM `customer_churn.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'telco_churn_raw';

-- 3. Check missing or empty values in TotalCharges
SELECT
  COUNT(*) AS empty_totalcharges
FROM `customer_churn.telco_churn_raw`
WHERE TotalCharges IS NULL OR TotalCharges = '';

-- 4. Churn distribution
SELECT
  Churn,
  COUNT(*) AS customers,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS churn_percentage
FROM `customer_churn.telco_churn_raw`
GROUP BY Churn;
