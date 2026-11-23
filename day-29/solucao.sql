-- Verificação de permissões
-- Consulta com usuário vendedor
SELECT * FROM pedidos;

-- Tentativa de atualização
-- UPDATE pedidos SET valor = 100 WHERE id = 1;
-- Erro esperado: ORA-01031: insufficient privileges (no MySQL: 1142)

-- Após revogar permissão
-- SELECT * FROM pedidos;
-- Erro esperado: ORA-01044: permission denied (no MySQL: 1142)