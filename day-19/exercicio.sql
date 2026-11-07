-- Tabela denormalizada
CREATE TABLE produtos_denormalizados (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  categoria VARCHAR(50),
  preco DECIMAL(10,2)
);

-- Inserir dados
INSERT INTO produtos_denormalizados (id, nome, categoria, preco) VALUES
(1, 'Notebook', 'Eletrônicos', 2999.99),
(2, 'Caneta', 'Escritório', 2.50),
(3, 'Teclado', 'Eletrônicos', 149.99),
(4, 'Lápis', 'Escritório', 1.00);

-- Tarefa: Normalizar a tabela acima em duas tabelas: categorias e produtos