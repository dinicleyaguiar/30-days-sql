-- Criar tabela de funcionários
CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  salario DECIMAL(10,2)
);

-- Inserir dados
INSERT INTO funcionarios (id, nome, salario) VALUES
(1, 'João', 5000.00),
(2, 'Maria', 6000.00),
(3, 'Pedro', 4500.00),
(4, 'Ana', 7000.00);

-- Consulta com subquery
SELECT nome, salario
FROM funcionarios
WHERE salario > (SELECT AVG(salario) FROM funcionarios);