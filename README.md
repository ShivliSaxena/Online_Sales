# Online_Sales
Task 6<br>
Author- Shivli Saxena<br>
# Monthly Sales Analysis – SQL Project<br>
This project demonstrates how to analyze time-based trends in online sales data using SQL. The analysis focuses on calculating **monthly revenue** and **order volume** for a retail dataset.<br>

**Table Used:** `online_sales`<br>
**Columns:**
- `order_date` (date of purchase)<br>
- `order_id` (unique ID for each order)<br>
- `total` (sales value of each order)<br>
- `item_id` (item identifier)<br>

## **SQL Concepts Used** <br>
- `STR_TO_DATE()` – Convert string to date format<br>
- `EXTRACT(YEAR/MONTH)` – Extract parts of the date<br>
- `SUM()` – Calculate total revenue<br>
- `COUNT(DISTINCT)` – Count unique orders (volume)<br>
- `GROUP BY` – Aggregate results by month/year<br>
- `ORDER BY` – Sort results by time<br>
- `WHERE` – Filter by time period<br>

## Analysis Performed<br>
The SQL script groups the data by **year** and **month** to calculate:<br>
- Total revenue (`SUM(amount)`)<br>
- Total order volume (`COUNT(DISTINCT order_id)`)<br>

The data is filtered for the year **2020 and 2021**, sorted in ascending order, and exported to Excel for further reporting.<br>

## Deliverables<br>
- `monthly_sales_analysis.sql` – Final SQL script
- `Monthly_Sales_Results.xlsx` – Excel file with:
  - SQL query
  - Results table
  - Outcome summary

## Outcome Summary<br>
- This analysis helped identify key trends in revenue and volume on a monthly basis.
- Revenue peaked in **October 2020**, while volume was highest in **October 2020**.
- Useful for understanding business performance over time and forecasting seasonal trends.


## How to Use<br>
1. Run the SQL script on a database with the `online_sales` table.
2. Export the result to Excel(sample files provided).
3. Customize date ranges or groupings as needed for deeper insights.

## Learning Outcome<br>
Learned how to extract and group time-based data using SQL, and how to use basic aggregate functions to draw business insights.<br>

## Contact<br>
Feel free to reach out if you have suggestions!


