-- Criação de tabelas
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2)
);

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  region VARCHAR(50)
);

-- Inserção de dados
INSERT INTO customers (customer_id, region) VALUES
(1, 'Sul'),
(2, 'Norte'),
(3, 'Sul'),
(4, 'Leste'),
(5, 'Norte');

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2023-01-15', 200.00),
(102, 2, '2023-02-20', 350.00),
(103, 3, '2023-03-10', 150.00),
(104, 4, '2023-04-05', 400.00),
(105, 5, '2023-05-12', 250.00);

-- Consulta principal
SELECT 
  region,
  SUM(total_amount) AS total_vendas,
  SUM(CASE 
         WHEN total_amount > 300 THEN total_amount * 0.15
         WHEN total_amount BETWEEN 200 AND 300 THEN total_amount * 0.10
         ELSE 0
       END) AS desconto_total
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY region;