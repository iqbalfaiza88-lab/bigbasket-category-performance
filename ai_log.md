# AI Prompting Log

## RCTCF AI Prompt #1 — SQL Diagnostic

Role: You are a senior SQL data analyst helping a beginner analyze BigBasket order data.

Context: The dataset contains orders, products, customers, and category targets. The goal is to perform data validation, aggregation, joins, reporting, and category target analysis using SQLite.

Task: Help create SQL queries for data validation, delivered revenue analysis, category performance, product order counts, CASE-based performance tiers, monthly category revenue, and variance against category targets.

Constraints: Use SQLite-compatible SQL. Explain queries clearly and avoid changing the source data.

Verification: Confirm expected values such as 500 orders, 31 products, 50 customers, 434 delivered orders, and ₹88,282 delivered revenue.

---

## RCTCF AI Prompt #2 — Pandas Analysis

Role: You are a senior data analyst helping a beginner complete a Pandas data-cleaning and analysis task.

Context: I am analyzing BigBasket order data using Python and Pandas. The raw orders CSV contains duplicate order IDs, inconsistent city/category formatting, missing amount values, and extreme delivered-order revenue outliers.

Task: Help me clean and analyze the data using Pandas. The workflow should:
1. Load orders_raw.csv and products.csv.
2. Inspect the data using info(), describe(), and status value counts before modifying it.
3. Check and remove duplicate order IDs while keeping the first occurrence.
4. Standardize city and category using strip() and title().
5. Count missing amount_inr values without filling them.
6. Calculate the IQR and upper fence for delivered non-null amount_inr values.
7. Cap delivered revenue outliers at the upper fence instead of deleting them.
8. Create month, month_name, revenue_per_unit, and is_delivered columns.
9. Calculate delivered revenue by category.
10. Merge product information and calculate delivered revenue by supplier.
11. Create three appropriate Matplotlib charts.
12. Provide exactly three What/Why/Next-step observations.

Verification:
- Confirm that duplicate removal results in exactly 500 rows and 500 unique order IDs.
- Confirm that there are exactly 4 cities and 6 categories after cleaning.
- Confirm that there are exactly 10 missing amount_inr values.
- Confirm that the delivered amount IQR is Q1 = ₹90, Q3 = ₹275, IQR = ₹185, and upper fence = ₹552.50.
- Confirm that exactly 16 delivered revenue values are above the upper fence before capping.
- Confirm that the maximum delivered amount after capping is ₹552.50.
- Confirm that Household Essentials is the highest-revenue category.
- Confirm that HomeEssentials Traders is the highest-revenue supplier.
- Do not modify the raw CSV file.
