# Credit Card & Customer Dashboard Project
Project Overview
This project analyzes credit card transactions and customer data to provide actionable insights. It creates a weekly dashboard for monitoring transactions, customers, and revenue trends over time. The dashboard also supports updating with new data seamlessly.
# Tools & Technologies
- Data Source: CSV files (Credit Card & Customer data)
- Database: SQL (for storing and updating data)
- Visualization & Analysis: Power BI
- Calculations: DAX (Week-on-Week Revenue, Customer Analysis, Age & Income Groups, etc.)
# Features
- 52-week dashboard for credit card transactions and customer metrics
- Week-on-week (WoW) revenue and customer growth analysis
- Easy data update: adding new week data automatically refreshes the dashboard
- DAX formulas PDF attached in the repository for all key calculations
# Workflow
1. Load Credit Card and Customer CSV files into SQL.
2. Connect SQL to Power BI.
3. Build dashboards for 52 weeks’ data (credit_card, customer  file), analyzing transaction volume, revenue, and customer metrics.
4. Update the SQL database with 53rd week’s data (cc_add, cust_add), which automatically updates the Power BI reports on refreshing. 
5. Use DAX formulas for all key calculations (e.g., WoW revenue, customer count, age and income groups).
# Repository Contents
- data/ → CSV files
- docs/DAX_formulas.pdf → All DAX formulas used in the project
- dashboards
# Highlights
- Week-on-week analysis for credit card transactions & customers
- Seamless integration of new data
- All important DAX queries documented for reference
