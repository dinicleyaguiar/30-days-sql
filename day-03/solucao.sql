-- 1. Preço em ordem crescente
SELECT * FROM produtos ORDER BY preco ASC;

-- 2. Estoque em ordem decrescente
SELECT * FROM produtos ORDER BY estoque DESC;

-- 3. Nome alfabético e preço decrescente
SELECT * FROM produtos ORDER BY nome ASC, preco DESC;