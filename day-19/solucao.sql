-- Tabelas normalizadas
CREATE TABLE categorias (
  id INT PRIMARY KEY,
  nome VARCHAR(50)
);

CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  categoria_id INT,
  preco DECIMAL(10,2),
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Inserir dados normalizados
INSERT INTO categorias (id, nome) VALUES
(1, 'Eletrônicos'),
(2, 'Escritório');

INSERT INTO produtos (id, nome, categoria_id, preco) VALUES
(1, 'Notebook', 1, 2999.99),
(2, 'Caneta', 2, 2.50),
(3, 'Teclado', 1, 149.99),
(4, 'Lápis', 2, 1.00);

-- Consulta para recuperar produtos com suas categorias
SELECT produtos.nome AS produto, categorias.nome AS categoria
FROM produtos
JOIN categorias ON produtos.categoria_id = categorias.id;