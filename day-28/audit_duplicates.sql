-- Criar tabela de exemplo
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  cpf VARCHAR(14),
  department VARCHAR(50),
  created_at TIMESTAMP
);

-- Inserir dados com duplicatas
INSERT INTO employees (id, name, cpf, department, created_at) VALUES
(1, 'João Silva', '123.456.789-00', 'TI', '2023-01-01 10:00:00'),
(2, 'João Silva', '123.456.789-00', 'TI', '2023-01-02 11:00:00'),
(3, 'Maria Oliveira', '987.654.321-00', 'RH', '2023-01-03 12:00:00'),
(4, 'Maria Oliveira', '987.654.321-00', 'RH', '2023-01-04 13:00:00');

-- Identificar duplicatas
SELECT cpf, COUNT(*) AS quantidade
FROM employees
GROUP BY cpf
HAVING COUNT(*) > 1;

-- Remover duplicatas, mantendo o registro mais recente
DELETE FROM employees
WHERE id NOT IN (
  SELECT id FROM (
    SELECT id, ROW_NUMBER() OVER (PARTITION BY cpf ORDER BY created_at DESC) AS rn
    FROM employees
  ) AS ranked
  WHERE rn = 1
);