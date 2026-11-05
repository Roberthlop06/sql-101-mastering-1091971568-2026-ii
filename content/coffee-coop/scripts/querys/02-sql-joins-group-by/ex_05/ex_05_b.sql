/*
Exercise 05 - b
Incomplete records on September 30 2026: analyses without settlement or settlements without analysis
*/
SELECT
    T1.analysis_id AS analysis,
    T1.is_accepted AS accepted,
    T2.settlement_id AS settlement,
    T2.status AS settlement_status
FROM buy.quality_analyses AS T1
FULL JOIN pay.settlements AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE (T1.delivery_id LIKE 'DLV-20260930-%' OR T2.delivery_id LIKE 'DLV-20260930-%')
    AND (T1.analysis_id IS NULL OR T2.settlement_id IS NULL);

/*
      analysis      | accepted | settlement | settlement_status
--------------------+----------+------------+-------------------
 QA-20260930-000020 | t        |            |
 QA-20260930-000054 | t        |            |
 QA-20260930-000025 | f        |            |
 QA-20260930-000095 | t        |            |
 QA-20260930-000101 | t        |            |
 QA-20260930-000090 | t        |            |
 QA-20260930-000071 | t        |            |
 QA-20260930-000135 | t        |            |
 QA-20260930-000131 | t        |            |
 QA-20260930-000014 | t        |            |
 QA-20260930-000050 | t        |            |
 QA-20260930-000041 | t        |            |
 QA-20260930-000067 | t        |            |
 QA-20260930-000034 | t        |            |
 QA-20260930-000091 | t        |            |
 QA-20260930-000085 | t        |            |
 QA-20260930-000068 | f        |            |
 QA-20260930-000065 | t        |            |
 QA-20260930-000093 | t        |            |
 QA-20260930-000073 | t        |            |
 QA-20260930-000113 | f        |            |
 QA-20260930-000129 | t        |            |
 QA-20260930-000119 | f        |            |
 QA-20260930-000146 | t        |            |
 QA-20260930-000151 | t        |            |
 QA-20260930-000009 | t        |            |
 QA-20260930-000021 | t        |            |
 QA-20260930-000019 | t        |            |
 QA-20260930-000064 | t        |            |
 QA-20260930-000083 | t        |            |
 QA-20260930-000102 | t        |            |
 QA-20260930-000111 | t        |            |
 QA-20260930-000104 | f        |            |
 QA-20260930-000140 | t        |            |
 QA-20260930-000138 | t        |            |
 QA-20260930-000013 | t        |            |
 QA-20260930-000023 | t        |            |
 QA-20260930-000049 | t        |            |
 QA-20260930-000011 | t        |            |
 QA-20260930-000081 | t        |            |
 QA-20260930-000031 | t        |            |
 QA-20260930-000106 | t        |            |
 QA-20260930-000142 | t        |            |
 QA-20260930-000024 | t        |            |
 QA-20260930-000048 | t        |            |
 QA-20260930-000040 | t        |            |
-- Más  --

*/