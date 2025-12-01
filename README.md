# SaaS-Data-Analytics
saas-analytics/
│
├── README.md                  #  Your project homepage & instructions
├── requirements.txt           #  Python packages needed
│
├── sql/                       # SQL scripts
│   ├── schema.sql             # DDL to create tables
│   ├── sample_data.sql        # INSERT statements for demo SaaS data
│   └── analysis_queries.sql   # Example queries (MRR, churn, revenue)
│
├── python/                     #  Python scripts
│   ├── load_data.py           # Loads CSVs into SQLite database
│   └── analysis.ipynb         # Jupyter notebook for Pandas analysis & charts
│
├── data/                       # Optional small CSV files for demo
│   ├── customers.csv
│   ├── subscriptions.csv
│   └── invoices.csv
│
└── docs/                       # Screenshots, diagrams, extra documentation

# SaaS Analytics Project (SQLite + Python + Pandas)

This project demonstrates SaaS analytics using SQLite, SQL, and Python (Pandas).

## Project Overview
- Create SQLite database (`saas.db`) with tables: customers, subscriptions, invoices
- Load sample data via SQL or Python
- Run analytics: MRR, churn, lifetime revenue
- Document workflow for GitHub

## Folder Structure


## Setup Instructions
1. Create SQLite DB (`saas.db`) via DataGrip or Python
2. Run `sql/schema.sql` to create tables
3. Run `sql/sample_data.sql` to insert demo data
4. Use Python scripts or Jupyter notebook for analysis
