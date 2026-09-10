# BigBasket Category Performance Diagnostic

A complete data analytics capstone project analyzing BigBasket category performance using SQL, Google Sheets, Tableau, and Python/Pandas.

## Project Overview

This project evaluates monthly revenue performance across six BigBasket product categories from January to June 2026. The analysis combines SQL-based data validation and reporting, spreadsheet analysis, Tableau visualization, and Python/Pandas data cleaning and analysis.

The project focuses on identifying categories that are above target, below target but requiring monitoring, and critically below target.

## Tools Used

- SQL / SQLite
- Google Sheets
- Tableau Public
- Python
- Pandas
- Matplotlib
- Google Colab
- GitHub

## Repository Structure

- 'generate_data.py' — Script used to generate the project dataset
- 'bigbasket_capstone.db' — SQLite database
- 'orders_raw.csv' — Raw orders dataset
- 'products.csv' — Product and supplier data
- 'monthly_category_revenue.csv' — Monthly category revenue report
- 'verify.sql' — Database verification queries
- '01_foundations.sql' — Basic SQL queries
- '02_aggregation_joins.sql' — Aggregation and JOIN queries
- '03_reporting.sql' — Reporting and target-variance queries
- 'analysis.ipynb' — Python/Pandas analysis notebook
- 'ai_log.md' — AI prompting and verification log
- '*.xlsx' — Google Sheets analysis workbook

## Key Findings

The final category performance against the assigned revenue targets was:

| Category | Actual Revenue | Target Revenue | Variance | Performance |
|---|---:|---:|---:|---|
| Household Essentials | ₹21,715 | ₹17,000 | +₹4,715 | Above Target |
| Bakery | ₹15,410 | ₹12,000 | +₹3,410 | Above Target |
| Personal Care | ₹16,382 | ₹15,500 | +₹882 | Above Target |
| Dairy & Eggs | ₹14,090 | ₹16,500 | -₹2,410 | Below Target - Watch |
| Fruits & Vegetables | ₹9,790 | ₹12,000 | -₹2,210 | Below Target - Critical |
| Snacks & Beverages | ₹10,895 | ₹13,000 | -₹2,105 | Below Target - Critical |

Overall delivered revenue was **₹88,282** across **434 delivered orders**.

The Tableau dashboard also reports an average order value of approximately **₹203.41** and **3 categories meeting their revenue targets**.

## Data Story

### Performance Summary

**Above Target**
- Household Essentials exceeded its target by ₹4,715.
- Bakery exceeded its target by ₹3,410.
- Personal Care exceeded its target by ₹882.

**Below Target - Watch**
- Dairy & Eggs was ₹2,410 below its target.

**Below Target - Critical**
- Fruits & Vegetables was ₹2,210 below its target.
- Snacks & Beverages was ₹2,105 below its target.

### Recommendations

1. Prioritize marketing and catalogue expansion for **Household Essentials**, which generated ₹21,715 and exceeded its target by ₹4,715.

2. Review the assortment and supplier performance of **Fruits & Vegetables** and **Snacks & Beverages**, as both categories are critically below target by ₹2,210 and ₹2,105 respectively.

## Tableau Public Dashboard

[View the live BigBasket Category Performance Dashboard](https://public.tableau.com/views/BigBasketCategoryPerformanceDashboard/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Python Analysis

The Python analysis includes:

- Raw data inspection
- Duplicate detection and removal
- City and category standardization
- Missing-value analysis
- IQR-based outlier detection
- Revenue outlier capping
- Date parsing and feature creation
- Category revenue analysis
- Supplier revenue analysis
- Three Matplotlib visualizations
- Business observations and next steps

The raw CSV files were not modified.

## SQL Analysis

The SQL analysis includes:

- Data validation
- Filtering and sorting
- DISTINCT, IN, BETWEEN, and NULL handling
- Aggregations using COUNT, SUM, and AVG
- INNER JOIN and LEFT JOIN analysis
- CASE-based performance tiering
- Monthly category reporting
- Revenue variance and percentage variance against targets

## Reproducibility

The project can be reproduced using the provided 'generate_data.py' script and the SQL/Python analysis files.

The generated database and CSV files are included in this repository for review.

## AI-Assisted Analysis

AI assistance was used during the project for guidance, troubleshooting, and verification.

The prompts and verification requirements are documented in:

'ai_log.md'

## Author

Faiza Iqbal
