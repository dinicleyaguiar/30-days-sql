CREATE PROCEDURE transfer_money (
  IN from_account INT,
  IN to_account INT,
  IN amount DECIMAL(10,2)
)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SELECT 'Erro na transferência' AS result;
  END;

  START TRANSACTION;
  UPDATE accounts
  SET balance = balance - amount
  WHERE account_id = from_account;
  UPDATE accounts
  SET balance = balance + amount
  WHERE account_id = to_account;
  INSERT INTO transactions (transaction_id, from_account, to_account, amount, status)
  VALUES (UUID(), from_account, to_account, amount, 'COMPLETED');
  COMMIT;
  SELECT 'Transferência concluída' AS result;
END;