USE hotel_db;

SELECT u.user_id, b.room_no
FROM users u
JOIN bookings b ON u.user_id = b.user_id
WHERE (u.user_id, b.booking_date) IN (
    SELECT user_id, MAX(booking_date)
    FROM bookings
    GROUP BY user_id
);


SELECT 
    b.booking_id,
    SUM(i.item_rate * bc.item_quantity) AS total_bill
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(b.booking_date) = 11
  AND YEAR(b.booking_date) = 2021
GROUP BY b.booking_id;


SELECT 
    bc.bill_id,
    SUM(i.item_rate * bc.item_quantity) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(bc.bill_date) = 10
  AND YEAR(bc.bill_date) = 2021
GROUP BY bc.bill_id
HAVING bill_amount > 1000;


SELECT *
FROM (
    SELECT 
        MONTH(bc.bill_date) AS month,
        bc.item_id,
        SUM(bc.item_quantity) AS total_qty,
        RANK() OVER (PARTITION BY MONTH(bc.bill_date) 
                     ORDER BY SUM(bc.item_quantity) DESC) AS rnk_desc,
        RANK() OVER (PARTITION BY MONTH(bc.bill_date) 
                     ORDER BY SUM(bc.item_quantity) ASC) AS rnk_asc
    FROM booking_commercials bc
    GROUP BY MONTH(bc.bill_date), bc.item_id
) t
WHERE rnk_desc = 1 OR rnk_asc = 1;


SELECT *
FROM (
    SELECT 
        MONTH(bc.bill_date) AS month,
        b.user_id,
        bc.bill_id,
        SUM(i.item_rate * bc.item_quantity) AS bill_amount,
        DENSE_RANK() OVER (
            PARTITION BY MONTH(bc.bill_date)
            ORDER BY SUM(i.item_rate * bc.item_quantity) DESC
        ) AS rnk
    FROM booking_commercials bc
    JOIN bookings b ON bc.booking_id = b.booking_id
    JOIN items i ON bc.item_id = i.item_id
    GROUP BY MONTH(bc.bill_date), bc.bill_id, b.user_id
) t
WHERE rnk = 2;