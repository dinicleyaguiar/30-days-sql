CREATE TABLE vendas (
  id INT PRIMARY KEY,
  produto_id INT,
  quantidade INT,
  preco_unitario DECIMAL(10,2),
  data_venda DATE
);

INSERT INTO vendas (id, produto_id, quantidade, preco_unitario, data_venda) VALUES
(1, 101, 2, 19.99, '2023-01-15'),
(2, 102, 1, 29.99, '2023-01-16'),
(3, 101, 5, 19.99, '2023-01-17'),
(4, 103, 3, 39.99, '2023-01-18'),
(5, 102, 2, 29.99, '2023-01-19');