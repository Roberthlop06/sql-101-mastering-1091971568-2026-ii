/*
Exercise 10 - a
Settlements count and total net amount by farmer for September 2026 deliveries
*/
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    COUNT(T4.settlement_id) AS settlements_count,
    SUM(T4.net_amount) AS total_net_cop
FROM farm.farmers AS T1
INNER JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
INNER JOIN buy.deliveries AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN pay.settlements AS T4
    ON T3.delivery_id = T4.delivery_id
WHERE T3.delivery_id LIKE 'DLV-202609%'
GROUP BY T1.document_number, T1.first_name, T1.last_name
ORDER BY total_net_cop DESC;

/*
  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | Garc├¡a Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Mu├▒oz Ram├¡rez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Fl├│rez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz Cu├®llar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Pe├▒a Vera             |                 1 |   12005420.07
 329350370  | Rub├®n               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Ni├▒o Fl├│rez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinz├│n         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 372230229  | Sandra              | Rojas Calder├│n        |                 2 |   11080803.26
 917466527  | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
 331235063  | Samuel ├ôscar        | Arias Jim├®nez         |                 2 |   10994005.87
 732259866  | Gustavo             | Mar├¡n Burbano         |                 1 |   10976260.61
 639041437  | Alberto             | Rinc├│n Herrera        |                 1 |   10959451.38
 986072029  | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
 872941046  | In├®s                | Cabrera D├¡az          |                 1 |   10800176.84
 841195935  | Santiago            | Galvis Guerrero       |                 1 |   10763485.08
 447176020  | Rosa                | Gonz├ílez Bastidas     |                 1 |   10577379.54
 941274390  | Hernando Fabio      | Lozano Erazo          |                 2 |   10457056.62
 640932519  | Manuel Jorge        | Rodr├¡guez Benavides   |                 1 |   10445584.60
 1131046356 | Germ├ín Wilmer       | Correa Tovar          |                 2 |   10415535.36
 855012511  | Martha              | Pab├│n Rodr├¡guez       |                 1 |   10398924.90
 433221065  | Jaime               | Lasso P├®rez           |                 1 |   10315335.60
 753809573  | An├¡bal Libardo      | C├írdenas Mosquera     |                 1 |   10291254.30
 435701329  | Myriam Mercedes     | Ortega Restrepo       |                 1 |   10288035.32
 29394305   | Fanny               | V├®lez Galvis          |                 1 |   10273917.15
 390661083  | Reinaldo            | Ospina Restrepo       |                 2 |   10270314.78
 1094381845 | Laura               | ├ülvarez Torres        |                 1 |   10264548.60
 838170316  | Mar├¡a               | Bastidas Cardona      |                 1 |   10190032.14
 627926203  | Diego ├ôscar         | Burbano Pab├│n         |                 2 |   10163972.22
 1099222171 | H├®ctor              | Burbano Perdomo       |                 2 |   10139600.96
 10184647   | Mariana             | Hern├índez Delgado     |                 2 |   10130725.77
 418825643  | Alba                | C├írdenas C├íceres      |                 1 |    9976552.30
 481542823  | Hernando            | Duque Burbano         |                 1 |    9954728.48
 542024763  | Jazm├¡n              | Zapata Prada          |                 1 |    9937740.78
 694987077  | Mariana             | Salazar Guti├®rrez     |                 1 |    9910717.68
-- Más  --

*/