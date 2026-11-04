-- Consulta com CASE para categorização de descontos
SELECT 
  region,
  SUM(total_amount) AS total_vendas,
  SUM(CASE 
         WHEN total_amount > 300 THEN total_amount * 0.15
         WHEN total_amount BETWEEN 200 AND 300 THEN total_amount * 0.10
         ELSE 0
       END) AS desconto_total
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY region;