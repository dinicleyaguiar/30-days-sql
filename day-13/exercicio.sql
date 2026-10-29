-- Criação de tabela
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  produto VARCHAR(50),
  valor DECIMAL(10,2),
  data_venda DATE
);

-- Inserção de dados
INSERT INTO vendas (id, produto, valor, data_venda) VALUES
(1, 'Notebook', 1200.00, '2023-01-15'),
(2, 'Mouse', 80.00, '2023-01-15'),
(3, 'Teclado', 150.00, '2023-01-16'),
(4, 'Notebook', 1300.00, '2023-01-17'),
(5, 'Mouse', 90.00, '2023-01-17'),
(6, 'Monitor', 2000.00, '2023-01-18');

-- Consulta com HAVING
SELECT produto, SUM(valor) AS total_vendas
FROM vendas
GROUP BY produto
HAVING SUM(valor) > 1000;