-- Consulta com subquery para encontrar funcionários com salário acima da média
SELECT nome, salario
FROM funcionarios
WHERE salario > (SELECT AVG(salario) FROM funcionarios);