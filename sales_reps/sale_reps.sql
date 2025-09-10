-- Which region has the most sales reps?
SELECT 
    r.name AS region_name,
    COUNT(s.id) AS sales_reps_count
FROM sales_reps AS s
JOIN region AS r
    ON s.region_id = r.id
GROUP BY r.name
ORDER BY sales_reps_count DESC
;

-- Sales Volume per Region
SELECT 
    r.name AS region_name,
    SUM(o.total_amt_usd) AS total_sales_usd
FROM region AS r
JOIN sales_reps AS s
    ON r.id = s.region_id
JOIN accounts AS a
    ON s.id = a.sales_rep_id
JOIN orders AS o
    ON a.account_id = o.account_id
GROUP BY r.name
ORDER BY total_sales_usd DESC;

-- Top Sales Reps by Orders
SELECT 
    s.name AS sales_rep_name,
    COUNT(o.id) AS orders_count
FROM sales_reps AS s
JOIN accounts AS a
    ON s.id = a.sales_rep_id
JOIN orders AS o
    ON a.account_id = o.account_id
GROUP BY s.name
ORDER BY orders_count DESC
;

-- Top Sales Reps by Accounts Managed
SELECT 
    s.name AS sales_rep_name,
    COUNT(a.account_id) AS accounts_count
FROM sales_reps AS s
JOIN accounts AS a
    ON s.id = a.sales_rep_id
GROUP BY s.name
ORDER BY accounts_count DESC
;


-- Top Sales Reps by Accounts Managed
SELECT 
    s.name AS sales_rep_name,
    COUNT(a.account_id) AS accounts_count
FROM sales_reps AS s
JOIN accounts AS a
    ON s.id = a.sales_rep_id
GROUP BY s.name
ORDER BY accounts_count DESC
;
