CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  data_cadastro DATE,
  disponivel BOOLEAN
);

INSERT INTO produtos (id, nome, preco, data_cadastro, disponivel) VALUES
(1, 'Notebook', 2999.99, '2023-03-15', TRUE),
(2, 'Teclado', 149.99, '2023-04-01', FALSE),
(3, 'Mouse', 89.99, '2023-05-10', TRUE);

SELECT * FROM produtos;
SELECT * FROM produtos WHERE disponivel = TRUE AND preco > 100;