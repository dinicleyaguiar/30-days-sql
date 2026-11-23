-- Criação da tabela
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  valor DECIMAL(10,2),
  data_pedido DATE
);

-- Criação do usuário
CREATE USER vendedor IDENTIFIED BY senha;

-- Conceder permissão de SELECT
GRANT SELECT ON pedidos TO vendedor;

-- Teste de acesso
-- SELECT * FROM pedidos; -- Deve funcionar
-- UPDATE pedidos SET valor = 100 WHERE id = 1; -- Deve falhar

-- Revogar permissão
REVOKE SELECT ON pedidos FROM vendedor;