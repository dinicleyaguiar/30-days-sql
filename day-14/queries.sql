-- 1. Total de vendas por produto
SELECT produto_id, SUM(quantidade * preco_unitario) AS total_vendas
FROM vendas
GROUP BY produto_id;

-- 2. Média de preços dos produtos
SELECT produto_id, AVG(preco_unitario) AS preco_medio
FROM vendas
GROUP BY produto_id;

-- 3. Quantidade total de itens vendidos
SELECT SUM(quantidade) AS itens_total
FROM vendas;

-- 4. Valor máximo de uma venda
SELECT MAX(quantidade * preco_unitario) AS venda_maxima
FROM vendas;