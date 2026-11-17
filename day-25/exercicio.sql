CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL
);

CREATE TABLE pedidos (
  id SERIAL PRIMARY KEY,
  cliente_id INTEGER REFERENCES clientes(id),
  valor NUMERIC(10,2) NOT NULL,
  data_pedido DATE NOT NULL
);

-- Inserir dados
INSERT INTO clientes (nome) VALUES ('Alice'), ('Bob'), ('Carol');
INSERT INTO pedidos (cliente_id, valor, data_pedido) VALUES
  (1, 1500, '2023-01-01'),
  (1, 800, '2023-02-01'),
  (2, 2000, '2023-03-01'),
  (3, 1200, '2023-04-01');

-- Consulta a ser analisada
EXPLAIN ANALYZE
SELECT c.nome, p.valor, p.data_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
WHERE p.valor > 1000
ORDER BY p.data_pedido;