-- Criar tabela
CREATE TABLE vendas (
  produto VARCHAR(50),
  categoria VARCHAR(50),
  valor DECIMAL(10,2)
);

-- Inserir dados
INSERT INTO vendas (produto, categoria, valor) VALUES
('Notebook', 'Eletrônicos', 2500.00),
('Smartphone', 'Eletrônicos', 1800.00),
('Televisão', 'Eletrônicos', 3200.00),
('Livro', 'Livros', 45.00),
('Mochila', 'Acessórios', 120.00),
('Câmera', 'Eletrônicos', 1500.00);

-- Consulta para calcular total por categoria
SELECT categoria, SUM(valor) AS total_vendas
FROM vendas
GROUP BY categoria;