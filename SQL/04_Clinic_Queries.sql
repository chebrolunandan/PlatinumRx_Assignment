-- 1. Find the revenue we got from each sales channel in a given year 
SELECT 
    sales_channel,
    SUM(amount) AS total_revenue
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY sales_channel;

-- 2. Find top 10 the most valuable customers for a given year 
SELECT 
    cs.uid,
    c.name,
    SUM(cs.amount) AS total_spent
FROM clinic_sales cs
JOIN customer c ON cs.uid = c.uid
WHERE YEAR(cs.datetime) = 2021
GROUP BY cs.uid, c.name
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Find month wise revenue, expense, profit , status (profitable / not-profitable) for a given year 
SELECT 
    m.month,
    COALESCE(r.revenue, 0) AS revenue,
    COALESCE(e.expense, 0) AS expense,
    COALESCE(r.revenue, 0) - COALESCE(e.expense, 0) AS profit,
    CASE 
        WHEN COALESCE(r.revenue, 0) - COALESCE(e.expense, 0) > 0 
        THEN 'profitable'
        ELSE 'not-profitable'
    END AS status
FROM 
(
    SELECT 1 AS month UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION
    SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION
    SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12
) m
LEFT JOIN (
    SELECT 
        MONTH(datetime) AS month,
        SUM(amount) AS revenue
    FROM clinic_sales
    WHERE YEAR(datetime) = 2021
    GROUP BY MONTH(datetime)
) r ON m.month = r.month
LEFT JOIN (
    SELECT 
        MONTH(datetime) AS month,
        SUM(amount) AS expense
    FROM expenses
    WHERE YEAR(datetime) = 2021
    GROUP BY MONTH(datetime)
) e ON m.month = e.month;

-- 4. For each city find the most profitable clinic for a given month 
SELECT *
FROM (
    SELECT 
        cl.city,
        cl.cid,
        cl.clinic_name,
        SUM(cs.amount) - COALESCE(SUM(e.amount),0) AS profit,
        RANK() OVER (
            PARTITION BY cl.city
            ORDER BY SUM(cs.amount) - COALESCE(SUM(e.amount),0) DESC
        ) AS rnk
    FROM clinics cl
    LEFT JOIN clinic_sales cs 
        ON cl.cid = cs.cid AND MONTH(cs.datetime) = 10 AND YEAR(cs.datetime) = 2021
    LEFT JOIN expenses e 
        ON cl.cid = e.cid AND MONTH(e.datetime) = 10 AND YEAR(e.datetime) = 2021
    GROUP BY cl.city, cl.cid, cl.clinic_name
) t
WHERE rnk = 1;

-- 5. For each state find the second least profitable clinic for a given month 
SELECT *
FROM (
    SELECT 
        cl.state,
        cl.cid,
        cl.clinic_name,
        SUM(cs.amount) - COALESCE(SUM(e.amount),0) AS profit,
        DENSE_RANK() OVER (
            PARTITION BY cl.state
            ORDER BY SUM(cs.amount) - COALESCE(SUM(e.amount),0) ASC
        ) AS rnk
    FROM clinics cl
    LEFT JOIN clinic_sales cs 
        ON cl.cid = cs.cid AND MONTH(cs.datetime) = 10 AND YEAR(cs.datetime) = 2021
    LEFT JOIN expenses e 
        ON cl.cid = e.cid AND MONTH(e.datetime) = 10 AND YEAR(e.datetime) = 2021
    GROUP BY cl.state, cl.cid, cl.clinic_name
) t
WHERE rnk = 2;