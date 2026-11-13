CREATE TABLE accounts (
  account_id INT PRIMARY KEY,
  balance DECIMAL(10,2),
  user_id INT
);

CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  from_account INT,
  to_account INT,
  amount DECIMAL(10,2),
  status VARCHAR(20)
);