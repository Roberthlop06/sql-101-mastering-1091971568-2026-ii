/*
Exercise 06 - a
Pairs of farms in municipality 54518 located in the same rural district
*/
SELECT
    T1.rural_district AS rural_district,
    T1.farm_name AS farm_a,
    T2.farm_name AS farm_b
FROM farm.farms AS T1
INNER JOIN farm.farms AS T2
    ON T1.rural_district = T2.rural_district
    AND T1.farm_id < T2.farm_id
WHERE T1.municipality_code = '54518'
    AND T2.municipality_code = '54518'
ORDER BY T1.rural_district ASC;

/*
    rural_district    |      farm_a      |      farm_b
----------------------+------------------+------------------
 Alcaparral           | Buenavista       | La Granja
 Alcaparral           | San Jos├®         | La Granja
 Alcaparral           | San Jos├®         | Monte Alto
 Alcaparral           | San Jos├®         | Miraflores
 Alcaparral           | San Jos├®         | Los Pinos
 Alcaparral           | La Floresta      | La Granja
 Alcaparral           | La Floresta      | Monte Alto
 Alcaparral           | La Floresta      | Miraflores
 Alcaparral           | La Floresta      | Los Pinos
 Alcaparral           | La Floresta      | San Jos├®
 Alcaparral           | La Floresta      | Buenavista
 Alcaparral           | Buenavista       | Monte Alto
 Alcaparral           | Buenavista       | Miraflores
 Alcaparral           | Buenavista       | Los Pinos
 Alcaparral           | Buenavista       | San Jos├®
 Alcaparral           | Monte Alto       | La Granja
 Alcaparral           | Los Pinos        | Miraflores
 Alcaparral           | Los Pinos        | Monte Alto
 Alcaparral           | Miraflores       | Monte Alto
 Alcaparral           | Miraflores       | La Granja
 Alcaparral           | Los Pinos        | La Granja
 Alto Grande          | El Refugio       | Monteverde
 Alto Grande          | El Refugio       | Los Pinos
 Alto Grande          | Bella Vista Alta | El Refugio
 Alto Grande          | Bella Vista Alta | Los Arrayanes
 Alto Grande          | Bella Vista Alta | Monteverde
 Alto Grande          | Bella Vista Alta | Los Pinos
 Alto Grande          | Las Brisas       | Los Pinos
 Alto Grande          | Las Brisas       | Monteverde
 Alto Grande          | Las Brisas       | Los Arrayanes
 Alto Grande          | Las Brisas       | El Refugio
 Alto Grande          | Las Brisas       | Bella Vista Alta
 Alto Grande          | Las Brisas       | Bellavista
 Alto Grande          | Las Brisas       | El Caney
 Alto Grande          | Las Brisas       | El Nogal
 Alto Grande          | Las Brisas       | La Loma
 Alto Grande          | Los Arrayanes    | Monteverde
 Alto Grande          | Los Arrayanes    | Los Pinos
 Alto Grande          | El Refugio       | Los Arrayanes
 Alto Grande          | El Ed├®n          | El Caney
 Alto Grande          | El Ed├®n          | El Nogal
 Alto Grande          | El Ed├®n          | La Loma
 Alto Grande          | El Ed├®n          | Las Brisas
 Alto Grande          | El Ed├®n          | El Guayabo
 Alto Grande          | El Recuerdo      | Bellavista
 Alto Grande          | El Recuerdo      | El Caney
-- Más  --

*/