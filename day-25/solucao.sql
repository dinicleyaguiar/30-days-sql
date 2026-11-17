-- Plano de execução da consulta
EXPLAIN ANALYZE
SELECT c.nome, p.valor, p.data_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
WHERE p.valor > 1000
ORDER BY p.data_pedido;

-- Melhoria: índice em valor para acelerar filtro
CREATE INDEX idx_pedidos_valor ON pedidos(valor);

-- Novo plano com índice
EXPLAIN ANALYZE
SELECT c.nome, p.valor, p.data_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
WHERE p.valor > 1000
ORDER BY p.data_pedido;