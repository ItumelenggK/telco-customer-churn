--How many customers do we have?
SELECT COUNT(*) AS total_customers
FROM telco_customer_churn

--How many customers churned?
SELECT
    churn_label,
    COUNT(*) AS customers
FROM telco_customer_churn
GROUP BY churn_label
ORDER BY customers DESC;

--Calculate overall churn rate
SELECT 
COUNT(*) AS total_customers,
SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(100.0* SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)/COUNT(*), 2) AS churn_rate
FROM telco_customer_churn

--understand customer tenure
SELECT
    ROUND(AVG(tenure_in_months), 2) AS average_tenure,
    MIN(tenure_in_months) AS shortest_tenure,
    MAX(tenure_in_months) AS longest_tenure
FROM telco_customer_churn;

--customer spending
SELECT
    ROUND(AVG(monthly_charge), 2) AS avg_monthly_charge,
    ROUND(AVG(total_charges), 2) AS avg_total_charges,
    ROUND(AVG(total_revenue), 2) AS avg_total_revenue
FROM telco_customer_churn;

--Does contract type have a relationship with customer churn?
SELECT contract, churn_label, COUNT(*) AS total_customers
FROM telco_customer_churn
GROUP BY 1,2
ORDER BY 1,2

--percentage of customers within each contract type who churned.
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY contract
ORDER BY churn_rate DESC;

--does tenure relate to churn?
SELECT 
CASE
WHEN tenure_in_months <=12 THEN '0-12 Months'
WHEN tenure_in_months <=24 THEN '13-24 Months'
WHEN tenure_in_months <=48 THEN '25-48 Months'
ELSE '49+ Months'
END AS tenure_group,
COUNT (*) AS total_customers,
SUM(CASE WHEN churn_label ='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND( 100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY tenure_group
ORDER BY churn_rate DESC;

--type of internet service
SELECT internet_service, COUNT(*) AS total_cuctomers,
SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY internet_service
ORDER BY churn_rate DESC;

--Which type of internet service has the highest churn rate?
SELECT
    internet_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY internet_type
ORDER BY churn_rate DESC;

--payment method
SELECT
    payment_method,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY payment_method
ORDER BY churn_rate DESC;

--Monthly charges
SELECT
    churn_label,
    COUNT(*) AS customers,
    ROUND(AVG(monthly_charge), 2) AS avg_monthly_charge,
    ROUND(AVG(total_charges), 2) AS avg_total_charges
FROM telco_customer_churn
GROUP BY churn_label;

--Age and customer characteristics
SELECT 
CASE
WHEN age <30 THEN 'under 30'
WHEN age BETWEEN 30 AND 49 THEN '30-49'
WHEN age BETWEEN 50 AND 64 THEN '50-64'
ELSE '65+'
END AS age_group,
 COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY age_group

--Technical support
SELECT
    premium_tech_support,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY premium_tech_support
ORDER BY churn_rate DESC;

--Offers/promotions
SELECT
    offer,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn_label = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_customer_churn
GROUP BY offer
ORDER BY churn_rate DESC;

--churn category
SELECT
    churn_category,
    COUNT(*) AS churned_customers,
    ROUND(
        100.0 * COUNT(*)
        / (SELECT COUNT(*)
           FROM telco_customer_churn
           WHERE churn_label = 'Yes'),
        2
    ) AS percentage_of_churn
FROM telco_customer_churn
WHERE churn_label = 'Yes'
GROUP BY churn_category
ORDER BY churned_customers DESC; 

--specific reasons
SELECT
    churn_reason,
    COUNT(*) AS churned_customers,
    ROUND(
        100.0 * COUNT(*)
        / (SELECT COUNT(*)
           FROM telco_customer_churn
           WHERE churn_label = 'Yes'),
        2
    ) AS percentage_of_churn
FROM telco_customer_churn
WHERE churn_label = 'Yes'
  AND churn_reason IS NOT NULL
GROUP BY churn_reason
ORDER BY churned_customers DESC;