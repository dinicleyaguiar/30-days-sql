CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  valor_total DECIMAL(10,2),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserir dados
INSERT INTO clientes (id_cliente, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Pedro');

INSERT INTO pedidos (id_pedido, id_cliente, valor_total) VALUES
(101, 1, 150.00),
(102, 1, 200.00),
(103, 2, 300.00),
(104, 3, 100.00);

-- Criar view
CREATE VIEW relatorio_clientes AS
SELECT
  c.nome AS cliente,
  COUNT(p.id_pedido) AS total_pedidos,
  ROUND(AVG(p.valor_total), 2) AS media_pedido
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente;

-- Usar a view
SELECT * FROM relatorio_clientes;