/*
Exercise 01 - c
Deliveries on September 30 2026 with farm name, collection point and gross weight
*/
SELECT
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T3.point_name ASC, T1.gross_weight_kg DESC;

/*
      delivery       |       farm       |               collection_point               | gross_weight_k
g
---------------------+------------------+----------------------------------------------+---------------
--
 DLV-20260930-000164 | La Divisa        | Punto de Compra Abriaqu├¡ 1                   |           48.
18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.0
0
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.9
6
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.1
3
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.6
2
 DLV-20260930-000080 | El Array├ín       | Punto de Compra Agrado 1                     |          120.
11
 DLV-20260930-000075 | La Primavera     | Punto de Compra Alcal├í 1                     |           61.
99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.0
2
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.5
5
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.4
2
 DLV-20260930-000249 | La Monta├▒a       | Punto de Compra Algeciras 1                  |          244.
21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.6
8
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.9
5
 DLV-20260930-000282 | El Para├¡so       | Punto de Compra Altamira 1                   |          156.
67
 DLV-20260930-000231 | La Palma         | Punto de Compra Altamira 1                   |          128.2
1
 DLV-20260930-000240 | La Primavera     | Punto de Compra Andaluc├¡a 2                  |          304.
69
 DLV-20260930-000203 | El Horizonte     | Punto de Compra Andaluc├¡a 2                  |          166.
57
 DLV-20260930-000079 | Las Brisas       | Punto de Compra Anserma 1                    |          176.9
1
 DLV-20260930-000009 | Las Delicias     | Punto de Compra Anserma 1                    |           56.8
0
 DLV-20260930-000157 | Las Margaritas   | Punto de Compra Anserma 2                    |          169.1
1
 DLV-20260930-000188 | El Placer        | Punto de Compra Anserma 2                    |           40.1
3
 DLV-20260930-000166 | El Oasis         | Punto de Compra Ansermanuevo 1               |          245.9
4
-- Más  --

*/