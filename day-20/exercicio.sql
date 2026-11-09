CREATE DATABASE vendas;
USE vendas;

-- Tabelas
CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  total DECIMAL(10,2),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE itens_pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  produto VARCHAR(100),
  quantidade INT,
  preco_unitario DECIMAL(10,2),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

-- Transação
START TRANSACTION;

INSERT INTO usuarios (nome, email) VALUES ('João Silva', 'joao@example.com');
SET @usuario_id = LAST_INSERT_ID();

INSERT INTO pedidos (usuario_id, total) VALUES (@usuario_id, 0.00);
SET @pedido_id = LAST_INSERT_ID();

INSERT INTO itens_pedido (pedido_id, produto, quantidade, preco_unitario) 
VALUES (@pedido_id, 'Livro', 2, 29.90),
       (@pedido_id, 'Caneta', 5, 1.99);

-- Simular falha
-- UPDATE pedidos SET total = 60.89 WHERE id = @pedido_id;

COMMIT;