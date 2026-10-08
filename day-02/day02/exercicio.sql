-- Criação de tabela
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  categoria VARCHAR(50)
);

-- Inserção de dados
INSERT INTO produtos (id, nome, preco, categoria) VALUES
(1, 'Notebook', 1200.00, 'eletrônicos'),
(2, 'Teclado', 89.90, 'eletrônicos'),
(3, 'Caderno', 19.90, 'escolar'),
(4, 'Caneta', 2.50, 'escolar');

-- Consulta com WHERE
SELECT * FROM produtos WHERE preco > 50 AND categoria = 'eletrônicos';