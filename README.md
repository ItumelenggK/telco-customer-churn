# Telco Customer Churn Analysis

## Project Overview

Customer churn is a major challenge for telecommunications companies because losing existing customers can reduce recurring revenue and increase customer acquisition costs.

This project analyses **7,043 telecommunications customers** to identify patterns associated with customer churn, understand why customers leave, and identify potential opportunities for improving customer retention.

The project follows an end-to-end data analytics workflow using **PostgreSQL, SQL, DAX and Power BI**.

---

## Business Objective

The objective of this project is to answer the following questions:

- What is the overall customer churn rate?
- Which customer segments have the highest churn?
- Does customer tenure influence churn?
- Which contract types are associated with higher churn?
- Which internet service types have higher churn?
- Are certain offers associated with increased churn?
- What are the main reasons customers leave?
- Are high-value customers being lost?
- Which areas should the business prioritise for retention?

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| PostgreSQL | Data storage and analysis |
| SQL | Data preparation, segmentation and exploratory analysis |
| DAX | Measures and calculated fields |
| Power BI | Interactive dashboard and data visualisation |
| Excel/CSV | Initial dataset handling |

---

## Project Workflow

```text
Raw Dataset
     |
     v
Data Preparation
     |
     v
PostgreSQL
     |
     v
SQL Exploratory Analysis
     |
     v
Analytical View
     |
     v
Power BI Data Model
     |
     v
DAX Measures
     |
     v
Interactive Dashboard
     |
     v
Business Insights and Recommendations
```

---

# Dashboard

The Power BI dashboard consists of three pages.

## 1. Customer Churn Overview

This page provides a high-level view of customer churn and retention.

### Key Metrics

- Total Customers: **7,043**
- Churned Customers: **1,869**
- Retained Customers: **5,174**
- Churn Rate: **26.54%**
- Retention Rate: **73.46%**

### Visuals

- Churn Rate by Contract Type
- Churn Rate by Tenure
- Churn Rate by Internet Type

### Purpose

The page provides an overview of the company's customer churn situation and highlights customer segments with substantial differences in churn rates.

---

## 2. Churn Drivers

This page examines customer characteristics, services and offers associated with higher churn.

### Visuals

- Churn Rate by Offer
- Churn Rate by Payment Method
- Churn Rate by Premium Tech Support
- Churn Rate by Age Group
- Top 10 Reasons for Customer Churn
- Churn by Category

### Purpose

The page helps identify customer segments associated with higher churn and provides insight into why customers are leaving.

---

## 3. Customer Retention and Risk

This page focuses on customer value and potential retention opportunities.

### Visuals

- High-Value Churned Customers
- Churned Customers by Risk Group
- Average CLTV by Churn Status
- Churned Customers by Contract and Internet Type
- Customers Lost to Competitors

### Purpose

The page focuses on identifying customers and segments that could be prioritised when developing future retention strategies.

---

# Key Insights

## Contract Type

Month-to-month customers have the highest observed churn rate.

| Contract | Churn Rate |
|---|---:|
| Month-to-Month | **45.84%** |
| One Year | **10.71%** |
| Two Year | **2.55%** |

This suggests that shorter-term customers represent an important retention opportunity.

---

## Customer Tenure

Early-tenure customers show substantially higher churn.

| Tenure | Churn Rate |
|---|---:|
| 0–12 Months | **47.44%** |
| 13–24 Months | **28.71%** |
| 25–48 Months | **20.39%** |
| 49+ Months | **9.51%** |

Customers within their first year have a churn rate of **47.44%**, while customers with 49 or more months of tenure have a considerably lower churn rate of **9.51%**.

This indicates that the early stages of the customer relationship are particularly important for retention.

---

## Internet Type

Fiber Optic customers have the highest observed churn rate.

| Internet Type | Churn Rate |
|---|---:|
| Fiber Optic | **40.72%** |
| Cable | **25.66%** |
| DSL | **18.58%** |
| None | **7.40%** |

This suggests that Fiber Optic customers should be investigated further, particularly in relation to pricing, network performance, service quality and customer expectations.

---

## Offers

Offer E has the highest observed churn rate.

| Offer | Churn Rate |
|---|---:|
| Offer E | **52.92%** |
| None | **27.11%** |
| Offer D | **26.74%** |
| Offer C | **22.89%** |
| Offer B | **12.26%** |
| Offer A | **6.73%** |

The substantial variation between offers suggests that offer design and customer targeting should be investigated further.

---

## Customer Support

Customers without Premium Tech Support have a considerably higher churn rate.

| Premium Tech Support | Churn Rate |
|---|---:|
| No | **31.19%** |
| Yes | **15.17%** |

The difference suggests that customer support and service experience may be important areas to investigate as part of a retention strategy.

---

# Why Are Customers Leaving?

## Churn Categories

| Category | Customers | Share of Churn |
|---|---:|---:|
| Competitor | **841** | **45.00%** |
| Attitude | 314 | **16.80%** |
| Dissatisfaction | 303 | **16.21%** |
| Price | 211 | **11.29%** |
| Other | 200 | **10.70%** |

The **Competitor** category represents the largest broad category of churn, accounting for **45% of churned customers**.

This indicates that competitive pressure is a major area for further investigation.

---

## Leading Specific Churn Reasons

The most common specific reasons include:

1. Competitor had better devices — **16.75%**
2. Competitor made better offer — **16.64%**
3. Attitude of support person — **11.77%**
4. Competitor offered more data — **6.26%**
5. Competitor offered higher download speeds — **5.35%**
6. Attitude of service provider — **5.03%**
7. Price too high — **4.17%**
8. Product dissatisfaction — **4.12%**
9. Network reliability — **3.85%**
10. Long distance charges — **3.42%**

Competitive offerings are therefore an important area for the business to investigate.

---

# High-Value Customer Analysis

A customer was classified as high value for this analysis when their **CLTV was 5,000 or higher**.

Using this analytical definition, the analysis identified:

**555 high-value customers who have churned.**

This is important because losing customers with higher lifetime value could have a greater financial impact than losing lower-value customers.

The CLTV threshold of 5,000 is an analytical threshold created for this project and is not an official company-defined classification.

---

# Business Recommendations

Based on the analysis, the following areas should be prioritised for further investigation.

### 1. Improve Early Customer Retention

Customers with 0–12 months of tenure have a **47.44% churn rate**.

The company could investigate improved onboarding, early engagement and first-year retention strategies.

### 2. Investigate Month-to-Month Customers

Month-to-month customers have a **45.84% churn rate**.

The company could explore loyalty incentives, improved value propositions and longer-term contract options.

### 3. Investigate Fiber Optic Churn

Fiber Optic customers have a **40.72% churn rate**.

Pricing, network performance, download speeds and customer satisfaction should be investigated.

### 4. Review High-Churn Offers

Offer E has a **52.92% churn rate**.

The company should investigate whether this offer is being provided to customers who already have a higher likelihood of leaving.

### 5. Improve Customer Support

Customers without Premium Tech Support have a **31.19% churn rate**, compared with **15.17%** among customers with support.

Customer service and technical support should therefore be investigated as potential retention opportunities.

### 6. Address Competitive Pressure

Competitor-related reasons account for **45% of churn**.

The company should review:

- Device offerings
- Pricing
- Data allowances
- Internet speeds
- Promotions
- Overall customer value proposition

---

# Limitations

- The dataset represents a fictional telecommunications company.
- The analysis identifies associations rather than proving causation.
- The churn score was provided in the dataset rather than developed through an independent predictive model.
- The CLTV and churn-risk thresholds used in the dashboard are analytical definitions created for this project.
- Further statistical testing and predictive modelling could provide deeper insight into the drivers of churn.

---

# Future Improvements

Future versions of this project could include:

- Building a churn prediction model using Python
- Logistic regression
- Decision tree classification
- Random forest classification
- Feature importance analysis
- Customer-level churn prediction
- Customer segmentation using clustering
- Statistical significance testing
- Automated Power BI refresh
- Targeted retention recommendations

---

# Skills Demonstrated

## Data Analytics

- Exploratory Data Analysis
- Customer Segmentation
- Churn Analysis
- Business Analysis
- Data Interpretation
- KPI Development

## Technical

- SQL
- PostgreSQL
- DAX
- Power BI
- Data Cleaning
- Data Transformation
- Data Visualisation

## Business

- Problem Definition
- Business Question Development
- Insight Generation
- Data-Driven Recommendations
- Stakeholder-Oriented Reporting
- Translating analytical findings into business actions

---

# Suggested Repository Structure

```text
telco-customer-churn-analysis/
│
├── README.md
│
├── data/
│   └── telco_customer_churn.csv
│
├── sql/
│   ├── create_table.sql
│   ├── data_cleaning.sql
│   ├── exploratory_analysis.sql
│   └── churn_analysis_view.sql
│
├── powerbi/
│   └── telco_customer_churn_dashboard.pbix
│
├── documentation/
│   └── project_documentation.pdf
│
└── screenshots/
    ├── page1_churn_overview.png
    ├── page2_churn_drivers.png
    └── page3_retention_risk.png
```

---

# Project Status

**Completed**

**Tools:** PostgreSQL | SQL | DAX | Power BI

**Dataset:** 7,043 customer records

**Dashboard:** 3-page interactive Power BI report
