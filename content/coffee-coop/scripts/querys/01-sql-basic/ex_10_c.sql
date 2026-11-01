-- Exercise 10
-- c) Settlements without deductions of September 30 2026 with calculated check_gross_cop column
SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    (T1.net_weight_kg * T1.price_per_kg_applied) AS check_gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop
FROM pay.settlements AS T1
WHERE
    T1.settlement_id LIKE 'STL-20260930-%'
    AND (T1.deductions_amount = 0 OR T1.deductions_amount IS NULL)
ORDER BY
    T1.settlement_id ASC;
/* 
Los valores de la columna calculada check_gross_cop coinciden exactamente 
con la columna gross_amount porque en la base de datos gross_amount es una columna 
generada (El enunciado del ejercicio lo dice encima). Esto significa que PostgreSQL calcula y 
guarda automáticamente ese valor mediante la fórmula net_weight_kg * price_per_kg_applied 
al registrar la liquidación. Por lo tanto, al realizar nosotros esa misma operación manualmente
en el SELECT, el resultado obtenido es idéntico al que ya calculó y almacenó el sistema.
*/

/*
     settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | check_gross_cop | deductions_cop |  net_cop
---------------------+---------------------+---------------+--------------+------------+-----------------+----------------+------------
 STL-20260930-000001 | DLV-20260929-000080 |        138.86 |     22176.00 | 3079359.36 |    3079359.3600 |           0.00 | 3079359.36
 STL-20260930-000005 | DLV-20260927-000198 |        158.94 |     21608.00 | 3434375.52 |    3434375.5200 |           0.00 | 3434375.52
 STL-20260930-000006 | DLV-20260928-000058 |        145.01 |     22847.00 | 3313043.47 |    3313043.4700 |           0.00 | 3313043.47
 STL-20260930-000008 | DLV-20260928-000093 |        152.95 |     22477.00 | 3437857.15 |    3437857.1500 |           0.00 | 3437857.15
 STL-20260930-000009 | DLV-20260929-000296 |         76.15 |     22169.00 | 1688169.35 |    1688169.3500 |           0.00 | 1688169.35
 STL-20260930-000011 | DLV-20260927-000088 |        211.64 |     22841.00 | 4834069.24 |    4834069.2400 |           0.00 | 4834069.24
 STL-20260930-000014 | DLV-20260929-000086 |         87.39 |     21960.00 | 1919084.40 |    1919084.4000 |           0.00 | 1919084.40
 STL-20260930-000015 | DLV-20260929-000207 |        115.02 |     20937.00 | 2408173.74 |    2408173.7400 |           0.00 | 2408173.74
 STL-20260930-000016 | DLV-20260928-000207 |        180.13 |     21779.00 | 3923051.27 |    3923051.2700 |           0.00 | 3923051.27
 STL-20260930-000018 | DLV-20260927-000097 |        216.32 |     21645.00 | 4682246.40 |    4682246.4000 |           0.00 | 4682246.40
 STL-20260930-000019 | DLV-20260928-000075 |        134.15 |     22808.00 | 3059693.20 |    3059693.2000 |           0.00 | 3059693.20
 STL-20260930-000021 | DLV-20260928-000105 |        219.83 |     22347.00 | 4912541.01 |    4912541.0100 |           0.00 | 4912541.01
 STL-20260930-000027 | DLV-20260927-000144 |        139.52 |     21607.00 | 3014608.64 |    3014608.6400 |           0.00 | 3014608.64
 STL-20260930-000028 | DLV-20260929-000270 |        216.54 |     22607.00 | 4895319.78 |    4895319.7800 |           0.00 | 4895319.78
 STL-20260930-000030 | DLV-20260927-000197 |         39.43 |     23273.00 |  917654.39 |     917654.3900 |           0.00 |  917654.39
 STL-20260930-000032 | DLV-20260929-000212 |        120.37 |     22012.00 | 2649584.44 |    2649584.4400 |           0.00 | 2649584.44
 STL-20260930-000033 | DLV-20260929-000007 |        183.79 |     22164.00 | 4073521.56 |    4073521.5600 |           0.00 | 4073521.56
 STL-20260930-000035 | DLV-20260927-000128 |        237.30 |     22840.00 | 5419932.00 |    5419932.0000 |           0.00 | 5419932.00
 STL-20260930-000038 | DLV-20260928-000241 |        247.93 |     21622.00 | 5360742.46 |    5360742.4600 |           0.00 | 5360742.46
 STL-20260930-000039 | DLV-20260929-000152 |        149.45 |     22744.00 | 3399090.80 |    3399090.8000 |           0.00 | 3399090.80
 STL-20260930-000041 | DLV-20260929-000018 |        308.65 |     20455.00 | 6313435.75 |    6313435.7500 |           0.00 | 6313435.75
 STL-20260930-000042 | DLV-20260928-000048 |        300.18 |     23455.00 | 7040721.90 |    7040721.9000 |           0.00 | 7040721.90
-- Más  --

*/