CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  birth_year INT CHECK (birth_year < 2024)
);

CREATE TABLE Publishers (
  publisher_id INT PRIMARY KEY,
  name VARCHAR(150) UNIQUE,
  country_code CHAR(2) CHECK (country_code IN ('BR', 'US', 'CA'))
);

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  author_id INT,
  isbn VARCHAR(13) UNIQUE,
  publication_year INT CHECK (publication_year BETWEEN 1900 AND 2024),
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Teste de inserção inválida:
-- INSERT INTO Authors (author_id, name, birth_year) VALUES (1, 'João', 2025);