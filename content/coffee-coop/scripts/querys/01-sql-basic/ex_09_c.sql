-- Exercise 09
-- c) Rejected quality analyses of September 30 2026 with notes ordered descending by defect percentage
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.defects_pct AS defect_percentage,
    T1.is_accepted AS is_accepted,
    T1.observations AS notes
FROM buy.quality_analyses AS T1
WHERE
    T1.analysis_id LIKE 'QA-20260930-%'
    AND T1.is_accepted = FALSE
    AND T1.observations IS NOT NULL
ORDER BY
    T1.defects_pct DESC;

/*
      analysis      |      delivery       | defect_percentage | is_accepted |                    not
es
--------------------+---------------------+-------------------+-------------+-----------------------
----------------------
 QA-20260930-000104 | DLV-20260930-000214 |             19.54 | f           | Olor a fermento en la
muestra.
 QA-20260930-000068 | DLV-20260930-000165 |             17.29 | f           | Muestra tomada por dup
licado.
 QA-20260930-000119 | DLV-20260930-000253 |             15.59 | f           | Exceso de impurezas y
pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |             13.21 | f           | Olor a fermento en la
muestra.
 QA-20260930-000113 | DLV-20260930-000223 |             12.94 | f           | Caf├® sobresecado, gra
no quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |              9.75 | f           | Caf├® con humedad alta
, requiere m├ís secado.
 QA-20260930-000018 | DLV-20260930-000006 |              7.88 | f           | Caf├® con humedad alta
, requiere m├ís secado.
(7 filas)

*/