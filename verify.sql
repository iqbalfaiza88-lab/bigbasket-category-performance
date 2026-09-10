
-- Verify BigBasket database

SELECT 'Orders' AS check_name, COUNT(*) AS result
FROM orders;

SELECT 'Products' AS check_name, COUNT(*) AS result
FROM products;

SELECT 'Customers' AS check_name, COUNT(*) AS result
FROM customers;

SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY status;

SELECT 'Delivered Revenue' AS check_name,
       SUM(amount_inr) AS result
FROM orders
WHERE status = 'Delivered';
