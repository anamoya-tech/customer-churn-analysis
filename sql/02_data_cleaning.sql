-- =====================================================
-- 02. Data Cleaning
-- Project: Customer Churn Analysis
-- Dataset: telco_churn_raw -> telco_churn_clean
-- Purpose: Clean and standardize data for analysis
-- =====================================================

CREATE OR REPLACE TABLE `customer_churn.telco_churn_clean` AS
WITH base AS (
  SELECT
    customerID,
    gender,
    CAST(SeniorCitizen AS INT64) AS senior_citizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,

    -- Financial fields
    CAST(MonthlyCharges AS NUMERIC) AS monthly_charges,
    SAFE_CAST(NULLIF(TRIM(TotalCharges), '') AS NUMERIC) AS total_charges,

    -- Target variable
    Churn
  FROM `customer_churn.telco_churn_raw`
)

SELECT
  *,
  -- Binary churn flag for analysis
  CASE
    WHEN Churn THEN 1
    ELSE 0
  END AS churn_flag
FROM base;
