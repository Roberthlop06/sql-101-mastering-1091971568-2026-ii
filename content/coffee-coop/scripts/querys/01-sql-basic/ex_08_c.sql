-- Exercise 08
-- c) Deliveries of September 30 2026 for wet parchment or cherry coffee ordered descending by gross weight
SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.coffee_type IN ('wet parchment', 'cherry')
ORDER BY
    T1.gross_weight_kg DESC;

/*
      delivery       | farm_id | collection_point_id |     received_at     | coffee_type | gross_wei
ght_kg
---------------------+---------+---------------------+---------------------+-------------+----------
-------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry      |
475.13
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry      |
339.30
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry      |
254.83
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry      |
246.96
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry      |
159.89
 DLV-20260930-000260 |  215048 |                 144 | 2026-09-30 15:14:37 | cherry      |
149.08
 DLV-20260930-000071 |  125140 |                 124 | 2026-09-30 08:25:30 | cherry      |
123.86
 DLV-20260930-000100 |  151444 |                  11 | 2026-09-30 09:49:19 | cherry      |
106.62
 DLV-20260930-000280 |  228280 |                   8 | 2026-09-30 16:07:06 | cherry      |
 99.14
 DLV-20260930-000297 |   49306 |                  67 | 2026-09-30 16:46:11 | cherry      |
 98.35
(10 filas)

*/