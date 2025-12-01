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
