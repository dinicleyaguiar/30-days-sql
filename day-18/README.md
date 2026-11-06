# Dia 18 — Day 18: Índices para otimizar consultas

Trilha: SQL  
Nível: intermediário  
Tema: Índices

## Objetivo

Entender como índices melhoram a performance de consultas SQL e implementar estratégias de indexação em tabelas.

## Conceito

Índices são estruturas de dados que aceleram consultas em tabelas grandes. Este exercício demonstra como criar índices em colunas frequentemente usadas em filtros e como isso impacta a velocidade de consultas.

## Desafio

Você precisa otimizar uma consulta lenta em uma tabela de vendas. A tabela contém 1 milhão de registros e a consulta atual está usando WHERE product_id = 123 AND date = '2023-01-01'.

## Pontos principais

- Como identificar colunas que exigem índices
- Como criar índices em colunas de filtros frequentes
- Como testar o impacto de índices em consultas

## Verificação

- Arquivos verificados estruturalmente; nenhum validador automático específico foi executado.
