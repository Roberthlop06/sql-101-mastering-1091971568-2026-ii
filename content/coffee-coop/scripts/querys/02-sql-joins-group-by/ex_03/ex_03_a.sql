/*
Exercise 03 - a
All collection points and their deliveries on September 30 2026 including points without deliveries
*/
SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%';

/*
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Jambal├│ 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra El Play├│n 1                  | DLV-20260930-000083 |           89.95
 Punto de Compra San Sebasti├ín De Mariquita 1 | DLV-20260930-000084 |          131.42
 Punto de Compra La Merced 1                  | DLV-20260930-000085 |          239.20
 Punto de Compra N├ítaga 1                     | DLV-20260930-000086 |           84.05
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Confines 1                   | DLV-20260930-000088 |          220.61
 Punto de Compra Villarrica 1                 | DLV-20260930-000089 |          229.80
 Punto de Compra Sevilla 1                    | DLV-20260930-000090 |          154.09
 Punto de Compra Morales 1                    | DLV-20260930-000091 |          139.14
 Punto de Compra Pijao 1                      | DLV-20260930-000092 |           59.23
 Punto de Compra Salamina 2                   | DLV-20260930-000093 |           39.42
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Sopetr├ín 1                   | DLV-20260930-000095 |          116.81
 Punto de Compra El Rosario 1                 | DLV-20260930-000096 |           53.57
 Punto de Compra Turbo 1                      | DLV-20260930-000097 |          146.99
 Punto de Compra Tiban├í 1                     | DLV-20260930-000098 |           92.63
 Punto de Compra Teruel 1                     | DLV-20260930-000099 |          103.07
 Punto de Compra Popay├ín 1                    | DLV-20260930-000100 |          106.62
 Punto de Compra Paicol 1                     | DLV-20260930-000101 |          198.24
 Punto de Compra San Andr├®s De Tumaco 2       | DLV-20260930-000102 |           94.30
 Punto de Compra Turbo 2                      | DLV-20260930-000103 |          250.86
 Punto de Compra La Pintada 1                 | DLV-20260930-000104 |          246.47
 Punto de Compra Puerto Tejada 1              | DLV-20260930-000105 |          277.63
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000106 |          308.32
 Punto de Compra La Plata 1                   | DLV-20260930-000107 |           46.82
 Punto de Compra Mallama 1                    | DLV-20260930-000108 |          298.73
 Punto de Compra Saman├í 1                     | DLV-20260930-000109 |          311.88
 Punto de Compra Timbiqu├¡ 1                   | DLV-20260930-000110 |          374.46
 Punto de Compra Purac├® 1                     | DLV-20260930-000111 |          294.56
 Punto de Compra Torib├¡o 1                    | DLV-20260930-000112 |           47.40
 Punto de Compra Sevilla 1                    | DLV-20260930-000113 |          225.97
 Punto de Compra Teruel 1                     | DLV-20260930-000114 |          128.15
 Punto de Compra L├¡bano 1                     | DLV-20260930-000115 |          230.48
 Punto de Compra El Banco 1                   | DLV-20260930-000116 |          243.35
 Punto de Compra San Jos├® 1                   | DLV-20260930-000117 |          342.43
 Punto de Compra Pacho 1                      | DLV-20260930-000118 |          111.64
 Punto de Compra Hatonuevo 1                  | DLV-20260930-000119 |           93.84
 Punto de Compra Bosconia 1                   | DLV-20260930-000120 |           59.56
 Punto de Compra Paicol 2                     | DLV-20260930-000121 |          171.53
 Punto de Compra La Tebaida 1                 | DLV-20260930-000122 |          235.59
 Punto de Compra La Cumbre 1                  | DLV-20260930-000123 |           81.10
 Punto de Compra Manzanares 1                 | DLV-20260930-000124 |          352.50
 Punto de Compra Sopetr├ín 1                   | DLV-20260930-000125 |          427.10
 Punto de Compra Salamina 2                   | DLV-20260930-000126 |          107.79
 Punto de Compra Valdivia 1                   | DLV-20260930-000127 |          122.11
-- Más  --

*/