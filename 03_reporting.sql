
-- BigBasket Capstone Project
-- 03_reporting.sql
-- Reporting Queries


-- 1. CASE: Category target performance tier
SELECT
    category,
    target_revenue,
    CASE
        WHEN target_revenue >= 15000 THEN 'High Target'
        WHEN target_revenue >= 10000 THEN 'Medium Target'
        ELSE 'Low Target'
    END AS target_tier
FROM category_targets;


-- 2. Monthly category revenue report
-- Delivered orders only
SELECT
    p.category,
    strftime('%Y-%m', o.order_date) AS month,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY
    p.category,
    strftime('%Y-%m', o.order_date)
ORDER BY
    month,
    p.category;


-- 3. Category variance against target
SELECT
    p.category,
    SUM(o.amount_inr) AS actual_revenue,
    t.target_revenue,
    SUM(o.amount_inr) - t.target_revenue AS variance,
    ROUND(
        (SUM(o.amount_inr) - t.target_revenue) * 100.0
        / t.target_revenue,
        2
    ) AS percentage_variance
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
INNER JOIN category_targets AS t
    ON p.category = t.category
WHERE o.status = 'Delivered'
GROUP BY
    p.category,
    t.target_revenue
ORDER BY
    p.category;
