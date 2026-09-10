
-- BigBasket Capstone Project
-- 02_aggregation_joins.sql
-- Aggregation and JOIN Queries


-- 1. INNER JOIN: Category-level delivered revenue
SELECT
    p.category,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category;


-- 2. HAVING: Categories with revenue greater than ₹10,000
SELECT
    p.category,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category
HAVING SUM(o.amount_inr) > 10000;


-- 3. LEFT JOIN: All products including zero-order products
SELECT
    p.product_name,
    p.category,
    COUNT(o.order_id) AS order_count
FROM products AS p
LEFT JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY order_count ASC;
