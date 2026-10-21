-- Crie uma tabela de exemplo (não execute esta parte)
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  preco DECIMAL(10,2),
  estoque INT
);

-- Inserção de dados (não execute esta parte)
INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Camiseta', 29.99, 100),
(2, 'Calça', 59.99, 50),
(3, 'Tênis', 129.99, 20);

-- Exercício: Exclua os produtos com estoque menor que 30
-- Não remova registros importantes acidentalmente
-- Use WHERE para garantir que apenas os desejados sejam excluídos