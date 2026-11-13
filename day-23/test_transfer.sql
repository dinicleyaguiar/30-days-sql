CALL transfer_money(1, 2, 100);
SELECT * FROM accounts;
SELECT * FROM transactions;

-- Teste de erro
CALL transfer_money(1, 3, 200);
SELECT * FROM accounts;
SELECT * FROM transactions;