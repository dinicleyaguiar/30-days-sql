-- Criação da tabela
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(150),
  status VARCHAR(20)
);

-- Inserção de dados
INSERT INTO clientes (id, nome, email, status) VALUES
(1, 'João', 'joao@example.com', 'ativo'),
(2, 'Maria', 'maria@example.com', 'inativo');

-- Tarefa: Atualize o e-mail e o status do cliente com id = 2
-- Exemplo de UPDATE:
-- UPDATE clientes SET email = 'nova_email', status = 'novo_status' WHERE id = 2;