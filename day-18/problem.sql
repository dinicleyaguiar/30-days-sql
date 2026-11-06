CREATE TABLE sales (
  id SERIAL PRIMARY KEY,
  product_id INT NOT NULL,
  date DATE NOT NULL,
  amount DECIMAL(10,2)
);

-- Inserir 1 milhão de registros
INSERT INTO sales (product_id, date, amount)
SELECT
  FLOOR(RANDOM() * 100000) AS product_id,
  CURRENT_DATE - (RANDOM() * 365)::INT AS date,
  (RANDOM() * 1000)::DECIMAL AS amount
FROM
  generate_series(1, 1000000) AS i;

-- Consulta lenta
EXPLAIN ANALYZE
SELECT * FROM sales
WHERE product_id = 123 AND date = '2023-01-01';