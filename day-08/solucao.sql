ALTER TABLE produtos ADD COLUMN categoria VARCHAR(50);

UPDATE produtos
SET categoria = 'Eletrônicos'
WHERE id IN (1, 2, 3);