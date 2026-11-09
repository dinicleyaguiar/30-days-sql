-- Verificação da integridade
SELECT * FROM usuarios;
SELECT * FROM pedidos;
SELECT * FROM itens_pedido;

-- Caso de falha
-- Se a linha comentada for descomentada, a transação será revertida automaticamente.