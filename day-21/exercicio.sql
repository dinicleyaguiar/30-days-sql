-- Criação de tabela
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    chefe_id INT
);

-- Inserção de dados
INSERT INTO funcionarios (id, nome, chefe_id) VALUES
(1, 'CEO', NULL),
(2, 'Gerente', 1),
(3, 'Líder', 2),
(4, 'Engenheiro', 3);

-- Consulta com CTE
WITH RECURSIVE cadeia_comandos AS (
    -- Caso base: encontrar o funcionário específico
    SELECT id, nome, chefe_id
    FROM funcionarios
    WHERE id = 4
    
    UNION ALL
    
    -- Caso recursivo: encontrar o chefe do funcionário
    SELECT f.id, f.nome, f.chefe_id
    FROM funcionarios f
    INNER JOIN cadeia_comandos c ON f.id = c.chefe_id
)
SELECT * FROM cadeia_comandos;