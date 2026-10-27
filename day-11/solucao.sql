-- Solução
-- INNER JOIN retorna apenas registros com correspondência
SELECT pedidos.pedido_id, clientes.nome, pedidos.valor
FROM pedidos
INNER JOIN clientes ON pedidos.cliente_id = clientes.cliente_id
WHERE pedidos.valor > 100;

-- LEFT JOIN retorna todos os registros da esquerda e os correspondentes da direita
SELECT pedidos.pedido_id, clientes.nome, pedidos.valor
FROM pedidos
LEFT JOIN clientes ON pedidos.cliente_id = clientes.cliente_id
WHERE pedidos.valor > 100;