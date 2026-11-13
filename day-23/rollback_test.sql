START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE account_id = 1;
-- Simulando falha
SELECT 1/0;
COMMIT;