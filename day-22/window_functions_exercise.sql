-- Criar tabelas temporárias
CREATE TEMPORARY TABLE clientes (
  cliente_id INT PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TEMPORARY TABLE vendas (
  venda_id INT PRIMARY KEY,
  cliente_id INT,
  data_venda DATE,
  valor NUMERIC(10,2)
);

-- Inserir dados de exemplo
INSERT INTO clientes (cliente_id, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Pedro');

INSERT INTO vendas (venda_id, cliente_id, data_venda, valor) VALUES
(101, 1, '2023-01-15', 150.00),
(102, 1, '2023-02-10', 200.00),
(103, 2, '2023-01-20', 300.00),
(104, 2, '2023-03-05', 100.00),
(105, 3, '2023-02-15', 400.00);

-- Consulta principal
SELECT 
  v.cliente_id,
  v.valor,
  ROW_NUMBER() OVER (PARTITION BY v.cliente_id ORDER BY v.valor DESC) AS classificacao,
  SUM(valor) OVER (PARTITION BY v.cliente_id ORDER BY v.data_venda) AS total_acumulado
FROM vendas v
ORDER BY v.cliente_id, classificacao;