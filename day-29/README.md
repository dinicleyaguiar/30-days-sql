# Dia 29 — Controle de Acesso com Privilégios em SQL

Trilha: SQL  
Nível: avançado  
Tema: Segurança e privilégios

## Objetivo

Praticar a criação de usuários com permissões específicas e verificar o funcionamento do sistema de privilégios.

## Conceito

Implemente um cenário onde um usuário 'vendedor' tem acesso apenas à tabela 'pedidos' e não pode alterar dados. Teste as permissões com consultas e comandos de modificação.

## Desafio

Crie um script que: 1) Crie a tabela 'pedidos' com colunas 'id', 'cliente_id', 'valor' e 'data_pedido'; 2) Crie um usuário 'vendedor' com permissão de SELECT apenas na tabela 'pedidos'; 3) Valide se o usuário pode selecionar dados e tentar atualizar um registro; 4) Revogue a permissão e confirme que o acesso foi negado.

## Pontos principais

- Comandos GRANT e REVOKE
- Controle de acesso granular
- Verificação de permissões em tempo real

## Verificação

- Arquivos verificados estruturalmente; nenhum validador automático específico foi executado.
