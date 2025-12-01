PRAGMA foreign_keys = ON;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    signup_date TEXT
);

CREATE TABLE subscriptions (
    subscription_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    plan_name TEXT,
    price REAL,
    status TEXT,
    start_date TEXT,
    end_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE invoices (
    invoice_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    amount REAL,
    invoice_date TEXT,
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


sample_data.sql
INSERT INTO customers VALUES
(1, 'Alice Johnson', 'alice@example.com', '2024-01-10'),
(2, 'Bob Smith', 'bob@example.com', '2024-02-18'),
(3, 'Carla Diaz', 'carla@example.com', '2024-03-05');

INSERT INTO subscriptions VALUES
(1, 1, 'Pro', 49.99, 'active', '2024-01-10', NULL),
(2, 2, 'Basic', 19.99, 'cancelled', '2024-02-18', '2024-05-18'),
(3, 3, 'Pro', 49.99, 'active', '2024-03-05', NULL);

INSERT INTO invoices VALUES
(1, 1, 49.99, '2024-04-01', 'paid'),
(2, 2, 19.99, '2024-05-01', 'paid'),
(3, 3, 49.99, '2024-04-01', 'overdue');

analysis_queries.sql
-- Monthly Recurring Revenue (MRR)
SELECT SUM(price) AS MRR
FROM subscriptions
WHERE status = 'active';

-- Overdue invoices
SELECT * FROM invoices
WHERE status = 'overdue';

-- Customer lifetime value
SELECT c.name, SUM(i.amount) AS lifetime_value
FROM customers c
JOIN invoices i ON c.customer_id = i.customer_id
GROUP BY c.customer_id;

