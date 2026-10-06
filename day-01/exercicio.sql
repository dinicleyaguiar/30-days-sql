-- Criação da tabela
CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  departamento VARCHAR(50),
  salario DECIMAL(10,2)
);

-- Inserção de dados
INSERT INTO funcionarios (id, nome, departamento, salario) VALUES
(1, 'João', 'TI', 5000.00),
(2, 'Maria', 'RH', 4500.00),
(3, 'Pedro', 'Finanças', 4800.00);

-- Solução
-- 1) Selecionar todos os funcionários
SELECT * FROM funcionarios;

-- 2) Selecionar apenas o nome e o departamento
SELECT nome, departamento FROM funcionarios;