CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  product_id INT,
  customer_id INT,
  region VARCHAR(50),
  sale_date DATE,
  amount DECIMAL(10,2)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50)
);

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  region VARCHAR(50)
);

-- Inserir dados de exemplo
INSERT INTO sales VALUES
(1, 101, 201, 'Northeast', '2023-01-15', 150.00),
(2, 102, 202, 'Southeast', '2023-02-20', 200.00),
(3, 103, 203, 'Northeast', '2023-03-10', 300.00);

INSERT INTO products VALUES
(101, 'Widget A', 'Electronics'),
(102, 'Widget B', 'Home'),
(103, 'Widget C', 'Electronics');

INSERT INTO customers VALUES
(201, 'Customer X', 'Northeast'),
(202, 'Customer Y', 'Southeast'),
(203, 'Customer Z', 'Northeast');

-- Consulta principal
WITH sales_summary AS (
  SELECT
    s.region,
    SUM(s.amount) AS total_sales,
    COUNT(*) AS num_sales,
    AVG(s.amount) AS avg_sale
  FROM sales s
  GROUP BY s.region
),
ranked_customers AS (
  SELECT
    c.customer_id,
    c.customer_name,
    SUM(s.amount) AS total_spent
  FROM customers c
  JOIN sales s ON c.customer_id = s.customer_id
  GROUP BY c.customer_id, c.customer_name
  ORDER BY total_spent DESC
  LIMIT 10
)
SELECT
  s.region,
  s.total_sales,
  s.avg_sale,
  rc.total_spent AS top_customer_spent
FROM sales_summary s
JOIN ranked_customers rc ON s.region = rc.customer_name;

-- Exibir plano de execução
EXPLAIN ANALYZE
SELECT
  s.region,
  SUM(s.amount) AS total_sales,
  COUNT(*) AS num_sales,
  AVG(s.amount) AS avg_sale
FROM sales s
GROUP BY s.region;