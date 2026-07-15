# Supermarket Performance Dashboard | SQL + Power BI

## Overview

This project demonstrates an end-to-end data analytics workflow using **PostgreSQL** and **Power BI**. The dataset was cleaned and analyzed in SQL before being visualized through an interactive dashboard that highlights key sales trends, customer behavior, and business performance.

## Objectives

* Clean and prepare raw sales data using SQL.
* Analyze sales performance with SQL queries.
* Build an interactive Power BI dashboard.
* Present key business insights through data visualization.

---

## Tools Used

* **PostgreSQL** – Data cleaning and analysis
* **Power BI** – Interactive dashboard and DAX measures
* **GitHub** – Project documentation and version control

---

## Dataset

The project uses a retail supermarket sales dataset containing transaction-level information, including:

* Order Date
* Branch
* City
* Product Line
* Customer Type
* Gender
* Payment Method
* Quantity
* Unit Price

The original dataset can be found:
[Supermarket Sales Dataset] (httpswww.kaggle.comdatasetshanif13supermarket-salesresource=download)
A copy of the dataset can be found in the 'Original Data/' folder.
---

## SQL Analysis

SQL was used to clean the dataset and answer business questions such as:

## Business Questions Answered

The SQL analysis answers the following business questions:

1. What is the total sales revenue generated?
2. How many total units were sold?
3. How many transactions were completed?
4. What is the average transaction value?
5. Which branch generated the highest revenue?
6. Which product lines generated the most revenue?
7. Which product lines sold the highest quantity of items?
8. Which customer type generated the most revenue?
9. Which customer type purchased the highest quantity of products?
10. Which customer type completed the most transactions?
11. Which gender generated the most revenue?
12. Which gender purchased the highest quantity of products?
13. How does revenue change from month to month?

All SQL queries are available in **`sql/03_analysis_queries.sql`**.

---

## Power BI Dashboard
The dashboard provides an interactive overview of sales performance, customer behaviour, and product trends through KPI, charts and slicers

### Page 1 – Sales Overview

* Total Revenue KPI
* Total Orders KPI
* Total Units Sold KPI
* Revenue by Month
* Revenue by Product Line
* Revenue by Branch
* Interactive slicers (Year, Branch, Product Line)

### Page 2 – Customer Insights

* Average Order Value
* Revenue by Customer Type
* Orders by Payment Method
* Revenue by Gender
* Average Rating by Product Line
* Interactive slicers

---
## Dashboard Preview

### Sales Overview

![Sales Overview](Images/Supermarket%20Performance%20Dashboard%20page1.png)

![Sales Overview - Slicer](Images/Supermarket%20Performance%20Dashboard%20Slicer%201.png)

### Customer Insights

![Customer Insights](Images/Supermarket%20Performance%20Dashboard%20page2.png)

![Customer Insights - Slicer](Images/Supermarket%20Performance%20Dashboard%20Slicer%202.png)

---

## Key Insights

* Product line performance varies significantly across categories.
* Revenue trends fluctuate throughout the year, revealing seasonal patterns.
* Customer purchasing behavior differs by payment method and customer type.
* Branch performance can be compared interactively using dashboard filters.

---

## Project Structure

```
Supermarket-Performance-Dashboard/
│
├── Images/
│   ├── Supermarket Performance Dashboard page1.png
│   ├── Supermarket Performance Dashboard page2.png
│   ├── Supermarket Performance Dashboard Slicer 1.png
│   └── Supermarket Performance Dashboard Slicer 2.png
│
├── Original Data/
│   ├── data link.txt
│   └── Supermarket Sales 2.csv
│
├── PowerBI/
│   └── Supermarket Sales Dashboard.pbix
│
├── SQL Queries/
│   ├── 01_create_raw_table.sql
│   ├── 02_data_cleaning.sql
│   └── 03_analysis_queries.sql
│
└── README.md
```

---

## Skills Demonstrated

- SQL
- PostgreSQL
- DAX
- Data Cleaning
- Data Aggregation
- Business Intelligence
- Data Visualization
- Dashboard Design
- Power BI
- Analytical Thinking
