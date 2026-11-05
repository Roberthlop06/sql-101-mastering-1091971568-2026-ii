/*
Exercise 05 - a
Full audit of quality analyses and settlements on September 30 2026
*/
SELECT
    T1.analysis_id AS analysis,
    T1.is_accepted AS accepted,
    T2.settlement_id AS settlement,
    T2.status AS settlement_status
FROM buy.quality_analyses AS T1
FULL JOIN pay.settlements AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
    OR T2.delivery_id LIKE 'DLV-20260930-%';

/*
      analysis      | accepted |     settlement      | settlement_status
--------------------+----------+---------------------+-------------------
 QA-20260930-000038 | t        | STL-20261003-000001 | pending
 QA-20260930-000010 | t        | STL-20261002-000024 | paid
 QA-20260930-000044 | t        | STL-20261002-000003 | paid
 QA-20260930-000020 | t        |                     |
 QA-20260930-000054 | t        |                     |
 QA-20260930-000025 | f        |                     |
 QA-20260930-000095 | t        |                     |
 QA-20260930-000101 | t        |                     |
 QA-20260930-000090 | t        |                     |
 QA-20260930-000071 | t        |                     |
 QA-20260930-000135 | t        |                     |
 QA-20260930-000089 | t        | STL-20261003-000005 | paid
 QA-20260930-000118 | t        | STL-20261001-000040 | pending
 QA-20260930-000131 | t        |                     |
 QA-20260930-000144 | t        | STL-20261001-000003 | pending
 QA-20260930-000148 | t        | STL-20261001-000007 | paid
 QA-20260930-000001 | t        | STL-20261001-000006 | pending
 QA-20260930-000003 | t        | STL-20261001-000052 | paid
 QA-20260930-000043 | t        | STL-20261002-000023 | paid
 QA-20260930-000051 | t        | STL-20261002-000040 | paid
 QA-20260930-000030 | t        |                     |
 QA-20260930-000078 | t        | STL-20261001-000024 | paid
 QA-20260930-000053 | t        |                     |
 QA-20260930-000076 | t        | STL-20261003-000007 | pending
 QA-20260930-000080 | t        |                     |
 QA-20260930-000114 | t        | STL-20261001-000022 | paid
 QA-20260930-000124 | t        | STL-20261002-000033 | pending
 QA-20260930-000098 | t        | STL-20261001-000035 | paid
 QA-20260930-000134 | t        | STL-20261002-000011 | paid
 QA-20260930-000112 | t        | STL-20261001-000018 | pending
 QA-20260930-000108 | t        | STL-20261002-000021 | paid
 QA-20260930-000125 | t        |                     |
 QA-20260930-000145 | t        |                     |
 QA-20260930-000002 | t        | STL-20261002-000030 | paid
 QA-20260930-000026 | t        | STL-20261001-000060 | partially_paid
 QA-20260930-000009 | t        |                     |
 QA-20260930-000004 | t        | STL-20261002-000018 | pending
 QA-20260930-000042 | t        | STL-20261002-000006 | paid
 QA-20260930-000015 | t        | STL-20260930-000050 | pending
 QA-20260930-000012 | t        | STL-20261001-000050 | paid
 QA-20260930-000021 | t        |                     |
 QA-20260930-000019 | t        |                     |
 QA-20260930-000055 | t        | STL-20261001-000056 | pending
 QA-20260930-000064 | t        |                     |
 QA-20260930-000083 | t        |                     |
 QA-20260930-000082 | t        | STL-20261002-000019 | paid
-- Más  --

*/