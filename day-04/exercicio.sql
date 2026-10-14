-- Criação de tabela de exemplo
CREATE TABLE livros (
  id INT PRIMARY KEY,
  titulo VARCHAR(100),
  autor VARCHAR(100)
);

-- Inserção de dados
INSERT INTO livros (id, titulo, autor) VALUES
(1, 'Dom Casmurro', 'Machado de Assis'),
(2, '1984', 'George Orwell'),
(3, 'Cem anos de solitude', 'Gabriel García Márquez'),
(4, 'O Senhor dos Anéis', 'J.R.R. Tolkien'),
(5, 'A Moreninha', 'José de Alencar'),
(6, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry');

-- Consulta para página 1 (primeiros 5)
SELECT * FROM livros ORDER BY titulo LIMIT 5;

-- Consulta para página 2 (registros a partir da posição 6)
SELECT * FROM livros ORDER BY titulo LIMIT 5 OFFSET 5;