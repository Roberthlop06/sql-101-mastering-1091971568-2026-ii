/*
Exercise 02 - a
Farmers of municipality 54518 with their farm name including farmers without farms
*/
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';

/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias Rodr├¡guez    | La Selva
 712758473  | Wilson            | L├│pez Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Berm├║dez   | El Diamante
 870240973  | Jairo             | Molina Pab├│n       | El Recuerdo
 727945493  | Gloria            | Mar├¡n Rivera       | La Esperanza
 549054771  | Mar├¡a             | Burbano Duarte     | El Nogal
 549054771  | Mar├¡a             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | Juli├ín            | Pe├▒a Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe Cu├®llar      | El Porvenir
 578947645  | Mario             | Uribe Cu├®llar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | Anc├¡zar Cristian  | Polan├¡a Delgado    | Los Arrayanes
 358946393  | Carmen            | C├írdenas Moreno    | El Horizonte
 358946393  | Carmen            | C├írdenas Moreno    | El Porvenir
 358946393  | Carmen            | C├írdenas Moreno    | La Esperanza
 358946393  | Carmen            | C├írdenas Moreno    | La Primavera
 811782754  | Nicol├ís           | Gonz├ílez Rodr├¡guez | El Guayabo
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | Bellavista
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | El Encanto
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | La Cumbre
 343256743  | Dora              | Hern├índez Correa   | Cafetal Viejo
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 974842644  | Arturo            | Hern├índez Uribe    | Bella Vista Alta
 974842644  | Arturo            | Hern├índez Uribe    | El Higuer├│n
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 42562183   | Roc├¡o Manuela     | Jaimes Cardona     | El Array├ín
 42562183   | Roc├¡o Manuela     | Jaimes Cardona     | El Silencio
 1148351420 | In├®s              | Jim├®nez Jaimes     | El Recuerdo
 1148351420 | In├®s              | Jim├®nez Jaimes     | La Gaitana
 674769591  | Iv├ín              | Zapata Ortiz       | El Mes├│n
 802182926  | Antonio           | D├¡az V├®lez         | El Mango
 802182926  | Antonio           | D├¡az V├®lez         | Las Mercedes
 802182926  | Antonio           | D├¡az V├®lez         | Las Orqu├¡deas
 1117597835 | Cecilia Lorena    | D├¡az Garc├¡a        | La Monta├▒a
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La Uni├│n
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
-- Más  --

*/