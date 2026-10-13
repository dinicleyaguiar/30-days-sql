-- Crie a tabela e insira dados para testar
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  preco DECIMAL(10,2),
  estoque INT
);

INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Notebook', 2999.99, 15),
(2, 'Mouse', 49.90, 100),
(3, 'Teclado', 129.90, 50),
(4, 'Monitor', 1499.99, 20);

-- Responda às perguntas usando ORDER BY