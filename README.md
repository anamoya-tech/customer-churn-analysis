# Customer Churn Analysis

## Project Overview

This project presents an end-to-end customer churn analysis for a subscription-based telecommunications business. The objective is to identify the key drivers of customer churn and evaluate their impact on revenue, using SQL for data analysis and Tableau for data visualization.

The project follows a structured analytics workflow, starting from raw data exploration and cleaning, through KPI analysis, and culminating in an executive-level dashboard designed for business decision-making.

---

## Business Problem

Customer churn represents a major challenge for subscription-based businesses, as retaining existing customers is significantly more cost-effective than acquiring new ones.

This analysis aims to answer the following questions:
- How severe is customer churn?
- Which customer segments are most likely to churn?
- What is the financial impact of churn?
- Which factors could be targeted to improve retention?

---

## Dataset

The analysis is based on the **IBM Telco Customer Churn Dataset**, a widely used dataset representing customer-level information for a telecommunications company.

**Key characteristics:**
- 7,043 customer records
- Demographics, service subscriptions, contract details, and billing information
- Binary churn indicator

The raw dataset was loaded into Google BigQuery and preserved without modification. All transformations were performed on a separate clean table following best practices.

---

## Tools & Technologies

- **SQL (Google BigQuery)** – Data exploration, cleaning, and KPI analysis  
- **Tableau Public** – Data visualization and dashboard creation  
- **GitHub** – Project documentation and version control  

---

## Data Exploration

Initial exploration was conducted to understand the structure, size, and quality of the dataset.

Key findings:
- The dataset contains **7,043 customer records**.
- No missing values were found in the `TotalCharges` column.
- The `TotalCharges` field was stored as a string and required type conversion.
- Approximately **26–27% of customers** have churned.

These findings guided the subsequent data cleaning and transformation steps.

---

## Data Cleaning

The raw dataset was transformed into a clean analytical table (`telco_churn_clean`) to ensure consistency and reliability for analysis.

Key steps performed:
- Converted financial fields (`MonthlyCharges`, `TotalCharges`) to numeric data types.
- Identified non-numeric blank values in `TotalCharges` and standardized them using `TRIM` and `NULLIF` before applying safe type casting.
- Resulted in **11 NULL values** in `TotalCharges`, corresponding to customers with zero tenure.
- Created a binary churn flag (`churn_flag`) to simplify churn analysis.
- Preserved the original raw table and created a separate clean table following best practices.

---

## KPI Analysis

Core business KPIs were calculated using SQL to quantify churn behavior and its financial implications.

Key metrics include:
- Overall churn rate
- Average monthly charges by churn status
- Average customer tenure by churn status
- Churn rate by contract type
- Estimated monthly revenue at risk from churned customers

This step translated raw data into actionable business metrics.

---

## Tableau Dashboard Development

The final stage of the project focused on transforming the analytical results into a clear and business-oriented dashboard using **Tableau Public**.

The dashboard was designed with an executive-level perspective, prioritizing clarity, interpretability, and storytelling over excessive complexity. Each visualization answers a specific business question related to customer churn.

### Dashboard Structure and Rationale

- **Overall Churn Rate**  
  A single KPI displaying the percentage of customers who have churned. This metric provides immediate context on the scale of the retention problem and serves as the entry point for the analysis.

- **Churn Rate by Contract Type**  
  A bar chart comparing churn rates across different contract types. This visualization highlights contract duration as one of the strongest churn drivers, with month-to-month contracts exhibiting significantly higher churn compared to long-term agreements.

- **Average Monthly Charges by Churn Status**  
  A comparison of average monthly charges between churned and retained customers. This view demonstrates that customers who churn tend to pay higher monthly fees, linking churn behavior directly to revenue considerations.

- **Monthly Revenue at Risk**  
  A KPI representing the estimated monthly revenue associated with customers who have churned. This metric emphasizes the financial impact of churn and supports prioritization of retention strategies for high-value customers.

### Design Choices

- A minimal and consistent color palette was used to reduce visual noise.
- The dashboard layout follows a top-down narrative: problem size, key driver, customer profile, and business impact.
- Interactivity was kept intentionally simple to ensure insights are understandable within seconds by non-technical stakeholders.

The dashboard serves as a practical example of how analytical results can be effectively communicated to decision-makers, bridging the gap between data analysis and business action.

---

## Interactive Dashboard

The final insights are presented through an interactive Tableau Public dashboard:

🔗 **Tableau Public Dashboard**  
https://prod-uk-a.online.tableau.com/t/anamoyabustio-6750caf29c/views/customer-churn-analysis/CustomerChurnAnalysisSubscription-BasedTelecomBusiness

---

## Final Conclusions

This project demonstrates how structured SQL analysis combined with clear data visualization can support data-driven decision making in a subscription-based business.

The analysis revealed that customer churn is a significant issue, with an overall churn rate of **26.54%**. Contract type emerged as one of the strongest churn drivers, with month-to-month customers churning at substantially higher rates than those on long-term contracts.

From a revenue perspective, churned customers tend to have higher average monthly charges, resulting in a meaningful **monthly revenue at risk**. These insights suggest that retention strategies focused on encouraging long-term contracts and addressing pricing sensitivity among high-value customers could significantly reduce churn and protect revenue.

Overall, this project highlights the importance of combining technical data analysis skills with effective communication to deliver actionable business insights.
