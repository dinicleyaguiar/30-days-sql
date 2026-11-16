## Resolução

1. **NOT NULL** garante que campos como título e autor_id não possam ser vazios.
2. **UNIQUE** impede ISBN duplicados e nomes únicos para editoras.
3. **CHECK** valida ano de publicação (1900-2024) e país (BR/US/CA).
4. **FOREIGN KEY** mantém relação com autores.
5. Inserções inválidas (como ano > 2024) geram erros de violação de restrição.