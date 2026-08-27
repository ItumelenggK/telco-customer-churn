CREATE OR REPLACE VIEW churn_analysis AS
SELECT
    customer_id,
    gender,
    age,
    senior_citizen,
    married,
    dependents,
    number_of_dependents,
    tenure_in_months,
    contract,
    internet_service,
    internet_type,
    payment_method,
    monthly_charge,
    total_charges,
    total_revenue,
    premium_tech_support,
    online_security,
    online_backup,
    device_protection_plan,
    streaming_tv,
    streaming_movies,
    offer,
    churn_label,
    churn_score,
    cltv,
    churn_category,
    churn_reason,

    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 49 THEN '30-49'
        WHEN age BETWEEN 50 AND 64 THEN '50-64'
        ELSE '65+'
    END AS age_group,

    CASE
        WHEN tenure_in_months <= 12 THEN '0-12 Months'
        WHEN tenure_in_months <= 24 THEN '13-24 Months'
        WHEN tenure_in_months <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group

FROM telco_customer_churn;

SELECT *
FROM churn_analysis
LIMIT 10;

SELECT COUNT(*) AS total_records
FROM churn_analysis;