/*
Exercise 01 - b
Farms of municipality 54518 with rural district, municipality and farmer full name
*/
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T2.municipality_name AS municipality,
    T3.first_name AS first_name,
    T3.last_name AS last_name
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN farm.farmers AS T3
    ON T1.farmer_id = T3.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T3.last_name ASC;

/*
      farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 La Selva         | Pe├▒as                | Pamplona     | Manuel             | Agudelo Jim├®nez
 El Jard├¡n        | El Escorial          | Pamplona     | Manuel             | Agudelo Jim├®nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontib├│n             | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 Bellavista       | Alto Grande          | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 La Caba├▒a        | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 El Array├ín       | Navarro              | Pamplona     | Marleny            | ├ülvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | ├ülvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narv├íez
 El Recuerdo      | La Legua             | Pamplona     | Anc├¡zar            | Arango Silva
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ram├¡rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodr├¡guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San Jos├® De Tonchala | Pamplona     | ├üngela             | Barrera Pe├▒a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodr├¡guez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | Garc├¡a               | Pamplona     | Roc├¡o              | Bastidas Su├írez
 La Argentina     | Caima                | Pamplona     | Roc├¡o              | Bastidas Su├írez
 Los Pinos        | San Francisco        | Pamplona     | Rafael H├®ctor      | Bedoya Pinz├│n
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya V├®lez
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya V├®lez
 El Jard├¡n        | La Legua             | Pamplona     | Laura              | Benavides ├ülvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La Uni├│n         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides Mart├¡nez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | Berm├║dez Bedoya
 El Oasis         | La ÔöîPa               | Pamplona     | Iv├ín               | Berm├║dez Fl├│rez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | Berm├║dez G├│mez
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | Berm├║dez Henao
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | Berm├║dez Henao
 La Victoria      | Cunuba               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 Los Naranjos     | El Rosal             | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 El Retiro        | Garc├¡a               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | Berm├║dez Mu├▒oz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | Berm├║dez Rojas
 Miraflores       | El Rosal             | Pamplona     | M├│nica             | Betancur Arango
 La Esperanza     | Pe├▒as                | Pamplona     | Daniel             | Bonilla Duarte
 El Horizonte     | San Jos├® De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
-- Más  --

*/