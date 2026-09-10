
-- BigBasket Capstone Project
-- 01_foundations.sql
-- SQL Foundation Concepts

-- 1. SELECT
SELECT order_id, order_date, quantity, amount_inr, status
FROM orders;


-- 2. WHERE
SELECT order_id, order_date, amount_inr, status
FROM orders
WHERE status = 'Delivered';


-- 3. DISTINCT
SELECT DISTINCT payment_mode
FROM orders;


-- 4. ORDER BY + LIMIT
SELECT order_id, order_date, quantity, amount_inr, status
FROM orders
ORDER BY amount_inr DESC
LIMIT 10;


-- 5. Alias using AS
SELECT
    order_id,
    amount_inr AS order_amount,
    status
FROM orders
LIMIT 10;


-- 6. IN
SELECT
    order_id,
    payment_mode,
    amount_inr,
    status
FROM orders
WHERE payment_mode IN ('UPI', 'Credit Card');


-- 7. BETWEEN
SELECT
    order_id,
    amount_inr,
    status
FROM orders
WHERE amount_inr BETWEEN 100 AND 300;


-- 8. NOT BETWEEN
SELECT
    order_id,
    amount_inr,
    status
FROM orders
WHERE amount_inr NOT BETWEEN 100 AND 300;


-- 9. IS NULL
SELECT
    order_id,
    status,
    rating
FROM orders
WHERE rating IS NULL;
