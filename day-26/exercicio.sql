CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  product_id INT,
  sale_date DATE,
  amount DECIMAL(10,2),
  quantity INT
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50)
);

-- Inserir dados
INSERT INTO products (product_id, product_name, category) VALUES
(1, 'Notebook', 'eletrônicos'),
(2, 'Teclado', 'eletrônicos'),
(3, 'Caneta', 'escritório');

INSERT INTO sales (sale_id, product_id, sale_date, amount, quantity) VALUES
(1, 1, '2023-01-01', 1500.00, 2),
(2, 2, '2023-01-02', 200.00, 5);

-- Consulta inicial (lenta)
SELECT s.sale_date, s.amount, s.quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE p.category = 'eletrônicos';

-- Consulta otimizada
-- 1. Criar índice
CREATE INDEX idx_category ON products(category);

-- 2. Reescrever consulta
SELECT s.sale_date, s.amount, s.quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE p.category = 'eletrônicos';

-- 3. Usar EXPLAIN para comparar planos de execução
EXPLAIN SELECT s.sale_date, s.amount, s.quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE p.category = 'eletrônicos';