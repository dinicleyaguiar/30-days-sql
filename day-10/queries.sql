-- 1. Liste todos os clientes com seus pedidos mais recentes
SELECT c.name, o.order_date, o.total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;

-- 2. Encontre clientes que fizeram mais de 3 pedidos
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 3;

-- 3. Atualize o total de um pedido específico
UPDATE Orders
SET total_amount = 150.00
WHERE order_id = 101;

-- 4. Exclua clientes que não fizeram nenhum pedido
DELETE FROM Customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id FROM Orders
);