-- Exercise 01 - c
-- Current date and time with NOW() vs current date with CURRENT_DATE without table
SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today
-------------------------------+------------
 2026-11-05 19:29:27.303941-05 | 2026-11-05
(1 fila)

*/