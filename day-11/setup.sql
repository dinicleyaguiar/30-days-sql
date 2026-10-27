CREATE TABLE clientes (
  cliente_id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(150)
);

CREATE TABLE pedidos (
  pedido_id INT PRIMARY KEY,
  cliente_id INT,
  valor DECIMAL(10,2),
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO clientes (cliente_id, nome, email) VALUES
(1, 'João Silva', 'joao@example.com'),
(2, 'Maria Oliveira', 'maria@example.com');

INSERT INTO pedidos (pedido_id, cliente_id, valor) VALUES
(101, 1, 75.50),
(102, 2, 120.00),
(103, 1, 45.00);