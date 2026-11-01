-- Exercise 07
-- c) Farms in Pamplona without geographic coordinates (null latitude or longitude)
SELECT
    T1.farm_id AS farm_id,
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude AS longitude
FROM farm.farms AS T1
WHERE
    T1.municipality_code = '54518'
    AND (T1.latitude IS NULL OR T1.longitude IS NULL)
ORDER BY
    T1.farm_name ASC;

/*
 farm_id |       farm       |    rural_district    | latitude | longitude
---------+------------------+----------------------+----------+-----------
   76689 | Altamira         | El Alizal            |          |
  172542 | Bella Vista Alta | Alto Grande          |          |
  220666 | Bella Vista Alta | Sabaneta Baja        |          |
   18594 | Bella Vista Alta | El Rosal             |          |
   33175 | Bella Vista Alta | Sabaneta Baja        |          |
  121259 | Bellavista       | Pe├▒as                |          |
  106942 | Bellavista       | Cunuba               |          |
  162550 | Bellavista       | Alto Grande          |          |
  187371 | Bellavista       | San Jos├® De Tonchala |          |
  189422 | Cafetal Viejo    | Caima                |          |
   17126 | Cafetal Viejo    | San Jos├® De Tonchala |          |
  110517 | Cafetal Viejo    | La Legua             |          |
   83650 | El Bosque        | Tampanqueba          |          |
   68038 | El Brillante     | La Legua             |          |
    9863 | El Brillante     | Pe├▒as                |          |
  152278 | El Brillante     | Navarro              |          |
  170328 | El Cedro         | La Legua             |          |
  188015 | El Cedro         | Iscaligua            |          |
  215382 | El Danubio       | Tampanqueba          |          |
   31323 | El Danubio       | Garc├¡a               |          |
  186585 | El Diamante      | Monteadentro         |          |
  183028 | El Diamante      | El Alizal            |          |
   95792 | El Ed├®n          | Cabecera Municipal   |          |
   17013 | El Encanto       | Fontib├│n             |          |
   41744 | El Encanto       | San Jos├® De Tonchala |          |
  162551 | El Encanto       | Garc├¡a               |          |
   64065 | El Guamo         | Fontib├│n             |          |
   38290 | El Guamo         | Fontib├│n             |          |
   77937 | El Guayabo       | El Totumo            |          |
  203749 | El Guayabo       | Caima                |          |
   15110 | El Guayabo       | San Francisco        |          |
  216297 | El Guayabo       | Tampanqueba          |          |
   18593 | El Higuer├│n      | Caima                |          |
   48873 | El Higuer├│n      | La ÔöîPa               |          |
  104099 | El Horizonte     | La ÔöîPa               |          |
   19288 | El Horizonte     | San Jos├® De Tonchala |          |
   86379 | El Manantial     | Santa Matilde        |          |
  172568 | El Mango         | La Legua             |          |
  180516 | El Mango         | La ÔöîPa               |          |
   20017 | El Mes├│n         | Iscaligua            |          |
   48847 | El Mirador       | Fontib├│n             |          |
   95652 | El Mirador       | El Palchal           |          |
   39158 | El Nogal         | El Totumo            |          |
  151606 | El Nogal         | Tampanqueba          |          |
  183648 | El Oasis         | El Alizal            |          |
  135081 | El Para├¡so       | Navarro              |          |
  186584 | El Para├¡so       | El Palchal           |          |
  105975 | El Placer        | Monteadentro         |          |
   11687 | El Porvenir      | Fontib├│n             |          |
    3904 | El Recuerdo      | Alto Grande          |          |
  224309 | El Refugio       | Pe├▒as                |          |
   57025 | El Refugio       | Monteadentro         |          |
  126225 | El Refugio       | Sabaneta Baja        |          |
  219988 | El Retiro        | Sabaneta Alta        |          |
   99136 | El Silencio      | Iscaligua            |          |
  197334 | El Silencio      | Jurado               |          |
   50350 | El Tesoro        | Pe├▒as                |          |
  101393 | El Triunfo       | El Escorial          |          |
   34714 | El Triunfo       | Cabecera Municipal   |          |
   17562 | El Vergel        | Cabecera Municipal   |          |
   34713 | La Argentina     | Pe├▒as                |          |
  187474 | La Argentina     | Sabaneta Baja        |          |
  148930 | La Aurora        | El Palchal           |          |
  229219 | La Caba├▒a        | Lengua               |          |
  159736 | La Caba├▒a        | Cunuba               |          |
  207664 | La Caba├▒a        | Sabagua              |          |
   95653 | La Caba├▒a        | La ÔöîPa               |          |
  107259 | La Carolina      | Llano Castro         |          |
  212200 | La Cascada       | Caima                |          |
  117732 | La Cascada       | Lengua               |          |
   66344 | La Cumbre        | Cabecera Municipal   |          |
   19289 | La Esperanza     | Pe├▒as                |          |
    4243 | La Esperanza     | El Palchal           |          |
   58411 | La Esperanza     | El Rosal             |          |
  136714 | La Esperanza     | Monteadentro         |          |
   63417 | La Floresta      | San Jos├® De Tonchala |          |
  194099 | La Floresta      | Pe├▒as                |          |
   36016 | La Floresta      | Alcaparral           |          |
   12284 | La Florida       | Pe├▒as                |          |
  152688 | La Fortuna       | San Francisco        |          |
  186797 | La Gaitana       | Cunuba               |          |
   61751 | La Gloria        | San Jos├® De Tonchala |          |
  194336 | La Granja        | El Palchal           |          |
   35067 | La Holanda       | Cabecera Municipal   |          |
  135946 | La Isabela       | Monteadentro         |          |
  194840 | La Isabela       | Garc├¡a               |          |
   40347 | La Loma          | Sabagua              |          |
   61105 | La Loma          | Jurado               |          |
  212853 | La Milagrosa     | Jurado               |          |
  163489 | La Milagrosa     | El Palchal           |          |
  149337 | La Palma         | Iscaligua            |          |
   96318 | La Palma         | Tampanqueba          |          |
   66508 | La Palma         | Cunuba               |          |
   79675 | La Palma         | El Escorial          |          |
  172851 | La Palma         | Cunuba               |          |
  180131 | La Pradera       | Sabagua              |          |
   77849 | La Primavera     | San Jos├® De Tonchala |          |
  206959 | La Quebrada      | Monteadentro         |          |
  103598 | La Quebrada      | El Totumo            |          |
   39157 | La Reserva       | Garc├¡a               |          |
  215131 | La Reserva       | El Escorial          |          |
  155108 | La Selva         | Pe├▒as                |          |
   57022 | La Siberia       | Monteadentro         |          |
   48872 | La Siberia       | Sabaneta Baja        |          |
   98938 | La Siberia       | El Alizal            |          |
   25360 | La Uni├│n         | La Legua             |          |
   97980 | Las Brisas       | Alto Grande          |          |
    7001 | Las Delicias     | Caima                |          |
   89269 | Las Margaritas   | Garc├¡a               |          |
  187444 | Las Margaritas   | Fontib├│n             |          |
  208853 | Las Margaritas   | Caima                |          |
  151604 | Las Margaritas   | El Palchal           |          |
  155224 | Las Mercedes     | Navarro              |          |
   20635 | Las Mercedes     | Llano Castro         |          |
   89944 | Las Mercedes     | San Francisco        |          |
   20637 | Las Orqu├¡deas    | Sabaneta Baja        |          |
  222776 | Las Palmas       | El Escorial          |          |
   13216 | Los Arrayanes    | Navarro              |          |
    8213 | Los Arrayanes    | Cabecera Municipal   |          |
   96316 | Los Arrayanes    | El Palchal           |          |
  133333 | Los Guaduales    | Santa Matilde        |          |
   32485 | Los Laureles     | Pe├▒as                |          |
  106940 | Los Laureles     | El Alizal            |          |
   66626 | Los Laureles     | San Jos├® De Tonchala |          |
   35662 | Los Naranjos     | El Rosal             |          |
  123713 | Los Pinos        | Alcaparral           |          |
  190371 | Mi Ranchito      | Iscaligua            |          |
  135683 | Miraflores       | Alcaparral           |          |
  132552 | Monteverde       | Tampanqueba          |          |
   51036 | San Antonio      | La Legua             |          |
   28002 | San Antonio      | Jurado               |          |
  152066 | San Antonio      | Iscaligua            |          |
  214759 | San Jos├®         | Tampanqueba          |          |
   66627 | San Jos├®         | Iscaligua            |          |
  228106 | San Jos├®         | Santa Matilde        |          |
   92660 | San Luis         | Tampanqueba          |          |
   31281 | San Luis         | Sabaneta Alta        |          |
   91922 | San Luis         | Sabaneta Alta        |          |
  133332 | San Rafael       | Tampanqueba          |          |
  121408 | San Rafael       | El Totumo            |          |
  194041 | San Rafael       | San Jos├® De Tonchala |          |
   66345 | Santa B├írbara    | Caima                |          |
   58408 | Santa Clara      | Cunuba               |          |
  223336 | Santa Clara      | La Legua             |          |
  106939 | Tierra Linda     | La Legua             |          |
   66625 | Tierra Linda     | Tampanqueba          |          |
   31570 | Tierra Linda     | Lengua               |          |
   32484 | Tierra Linda     | Iscaligua            |          |
  112030 | Villa Hermosa    | El Rosal             |          |
  106440 | Villa Hermosa    | El Escorial          |          |
   91394 | Villa Rosa       | Cunuba               |          |
   97460 | Villa Rosa       | Pe├▒as                |          |
  174819 | Villa Rosa       | El Alizal            |          |
(153 filas)

*/