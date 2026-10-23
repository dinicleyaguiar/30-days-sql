-- Criar tabela de clientes
CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100)
);

-- Criar tabela de pedidos com chave estrangeira
CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  total DECIMAL(10,2),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserir cliente válido
INSERT INTO clientes (id_cliente, nome) VALUES (1, 'João');

-- Inserir pedido válido
INSERT INTO pedidos (id_pedido, id_cliente, total) VALUES (101, 1, 150.00);

-- Tentar inserir pedido com cliente inexistente
INSERT INTO pedidos (id_pedido, id_cliente, total) VALUES (102, 999, 200.00);