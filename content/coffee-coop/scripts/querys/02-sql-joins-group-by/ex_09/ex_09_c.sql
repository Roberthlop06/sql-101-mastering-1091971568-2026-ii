/*
Exercise 09 - c
Farms with at least 3 quality analyses and average cup score of 84 or higher
*/
SELECT
    T1.farm_name AS farm,
    COUNT(T3.analysis_id) AS analyses_count,
    ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses AS T3
    ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_id, T1.farm_name
HAVING COUNT(T3.analysis_id) >= 3
    AND AVG(T3.cup_score) >= 84
ORDER BY avg_cup_score DESC;

/*
       farm       | analyses_count | avg_cup_score
------------------+----------------+---------------
 El Caney         |              3 |         90.00
 Monteverde       |              4 |         90.00
 El Tesoro        |              3 |         90.00
 Los Pinos        |              5 |         90.00
 Las Delicias     |              5 |         90.00
 La Cristalina    |              3 |         90.00
 Santa Clara      |              3 |         90.00
 La Uni├│n         |              3 |         90.00
 El Array├ín       |              3 |         90.00
 El Para├¡so       |              3 |         90.00
 El Refugio       |              3 |         90.00
 El Triunfo       |              4 |         90.00
 El Porvenir      |              3 |         90.00
 El Recuerdo      |              3 |         90.00
 Los Pinos        |              7 |         90.00
 El Mango         |              7 |         90.00
 Las Palmas       |              5 |         90.00
 El Higuer├│n      |              6 |         90.00
 Altamira         |              3 |         90.00
 El Tesoro        |              3 |         90.00
 La Caba├▒a        |              5 |         90.00
 El Triunfo       |              6 |         90.00
 El Higuer├│n      |              3 |         90.00
 La Selva         |              4 |         90.00
 La Caba├▒a        |              6 |         90.00
 La Floresta      |              6 |         90.00
 La Reserva       |              3 |         90.00
 El Array├ín       |              4 |         90.00
 El Mirador       |              3 |         90.00
 Monte Alto       |              3 |         90.00
 El Porvenir      |              4 |         90.00
 La Monta├▒a       |              3 |         90.00
 La Divisa        |              3 |         90.00
 Cafetal Viejo    |              4 |         90.00
 El Bosque        |              3 |         90.00
 La Gloria        |              5 |         90.00
 Las Palmas       |              5 |         90.00
 El Placer        |              5 |         90.00
 Los Naranjos     |              3 |         90.00
 El Guamo         |              6 |         90.00
 Santa B├írbara    |              3 |         90.00
 Los Pinos        |              5 |         90.00
 Los Pinos        |              6 |         90.00
 San Antonio      |              3 |         90.00
 El Porvenir      |              4 |         90.00
 La Gaitana       |              4 |         90.00
 El Bosque        |              4 |         90.00
 El Horizonte     |              6 |         90.00
 La Florida       |              6 |         90.00
 La Loma          |              4 |         90.00
 El Encanto       |              3 |         90.00
 La Loma          |              3 |         90.00
 El Guamo         |              3 |         90.00
 Agua Bonita      |              4 |         90.00
 Las Orqu├¡deas    |              5 |         90.00
 Las Margaritas   |              3 |         90.00
 Santa Elena      |              3 |         90.00
 El Guamo         |              3 |         90.00
 La Palma         |              5 |         90.00
 San Jos├®         |              3 |         90.00
 Monteverde       |              4 |         90.00
 El Recreo        |              3 |         90.00
 La Cristalina    |              4 |         90.00
 Villa Rosa       |              4 |         90.00
 El Cafetal       |              4 |         90.00
 La Victoria      |              6 |         90.00
 El Cafetal       |              3 |         90.00
 Santa Elena      |              3 |         90.00
 La Estrella      |              7 |         90.00
 La Selva         |              3 |         90.00
 La Argentina     |              4 |         90.00
 Las Mercedes     |              3 |         90.00
 Altamira         |              5 |         90.00
 Los Guaduales    |              5 |         90.00
 La Quebrada      |              5 |         90.00
 El Caney         |              8 |         90.00
 La Victoria      |              3 |         90.00
 El Cedro         |              5 |         90.00
 El Cedro         |              3 |         90.00
 El Porvenir      |              5 |         90.00
 El Encanto       |              5 |         89.96
 Villa Rosa       |              3 |         89.96
 Las Palmas       |              3 |         89.92
 Villa Hermosa    |              4 |         89.91
 El Porvenir      |              3 |         89.90
 Los Laureles     |              4 |         89.86
 La Monta├▒a       |              4 |         89.85
 San Antonio      |              5 |         89.84
 El Porvenir      |              4 |         89.82
 La Siberia       |              3 |         89.82
 El Bosque        |              4 |         89.81
 La Cascada       |              3 |         89.81
 La Divisa        |              3 |         89.80
-- Más  --

*/