-- Exercise 06
-- b) Farmers of Pamplona without registered email address
SELECT
    T1.farmer_id AS farmer_id,
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone,
    T1.email AS email
FROM farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.email IS NULL
ORDER BY
    T1.last_name ASC;

/*
 farmer_id |  document  |    first_name    |     last_name      |   phone    | email
-----------+------------+------------------+--------------------+------------+-------
    117987 | 768461420  | Marleny          | Agudelo Sandoval   | 3242280898 |
     46617 | 939635303  | Marleny          | ┴lvarez Correa     | 3232410671 |
    101213 | 302223305  | Camilo           | Arias Mora         | 3045535545 |
     79124 | 550696749  | Viviana          | Arias RamÝrez      | 3204850778 |
     59149 | 797017145  | Isabella         | Barrera Cabrera    | 3041744702 |
     68544 | 483692716  | Ramiro           | Barrera Villamizar | 3056539829 |
    134817 | 718906996  | Nelson           | Bedoya VÚlez       | 3194564518 |
     29185 | 21358854   | Manuela Yolanda  | Benavides Delgado  | 3229418470 |
     98369 | 737383707  | Yesenia          | Berm·dez Henao     | 3141005257 |
    113393 | 1015411133 | Santiago         | Berm·dez Ruiz      | 3003993000 |
    138870 | 141613744  | ╔dgar            | Burbano Arango     | 3203780826 |
      3739 | 549054771  | MarÝa            | Burbano Duarte     | 3183590387 |
    137392 | 716388403  | Emilio           | Carrillo Perdomo   | 3135267851 |
     61562 | 1001674689 | Jaime Santiago   | CuÚllar Cßceres    | 3019841594 |
     20108 | 749444168  | Emilio           | Delgado Molina     | 3118015821 |
     14977 | 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684 |
     91475 | 932437698  | Amparo           | Duarte Duque       | 3059102841 |
     85417 | 846209158  | Daniel HÚctor    | Duque Ruiz         | 3242698476 |
    135840 | 622024549  | Viviana          | Gonzßlez Molina    | 3213218779 |
     36198 | 35147265   | Carlos           | GutiÚrrez Pab¾n    | 3223406765 |
     10999 | 343256743  | Dora             | Hernßndez Correa   | 3166719225 |
     61229 | 525766302  | Gustavo          | Ibarra Agudelo     | 3506003684 |
     31696 | 1185523747 | Elsa             | Ibarra Molina      | 3189660702 |
     12711 | 1148351420 | InÚs             | JimÚnez Jaimes     | 3104090231 |
    110563 | 860920785  | Hugo             | JimÚnez Parra      | 3244209117 |
     65238 | 232229735  | Libardo          | Lasso Serrano      | 3113250445 |
       775 | 712758473  | Wilson           | L¾pez Villamizar   | 3055094275 |
     87614 | 754524782  | Diana            | Lozano Rinc¾n      | 3506302080 |
     31736 | 131166207  | Jaime            | MarÝn Hernßndez    | 3114778905 |
      2716 | 727945493  | Gloria           | MarÝn Rivera       | 3225571567 |
    115925 | 102695503  | SofÝa            | MarÝn Rojas        | 3111640267 |
     26952 | 1171130241 | Elsa             | MejÝa Vera         | 3019766136 |
     24758 | 554620706  | Nelson Samuel    | MejÝa Vera         | 3022063857 |
     28126 | 824422301  | Hernando         | Montoya Agudelo    | 3218003724 |
     94342 | 283636187  | Gustavo          | Moreno L¾pez       | 3026442670 |
    111220 | 963176673  | Luis             | Mosquera Perdomo   | 3135244980 |
    125178 | 1053774538 | Isabella         | Mosquera Sandoval  | 3168625937 |
    111147 | 160538872  | Liliana          | Mosquera Uribe     | 3119365364 |
     59301 | 723123018  | Diego            | Ni±o Hernßndez     | 3103428954 |
    105376 | 641839251  | EfraÝn           | Ortega Correa      | 3504175536 |
    144796 | 1177165427 | Juliana          | Ortega Osorio      | 3206119667 |
    138643 | 361839624  | RocÝo Alba       | Ortega Serrano     | 3249488512 |
     26035 | 59388780   | Juan             | Ortega Zapata      | 3217129169 |
     51243 | 1189704117 | Mariana          | Ortiz Ruiz         | 3004621446 |
     88113 | 914235490  | Ëscar            | Ospina Gonzßlez    | 3153244524 |
     69842 | 966970818  | Gustavo          | Parra Ortiz        | 3218747954 |
     42933 | 1135293825 | Abelardo         | PÚrez Castro       | 3245612074 |
     49564 | 549847293  | Wilmer           | PÚrez Chamorro     | 3124455023 |
     52384 | 599185252  | EfraÝn           | Pinz¾n Cabrera     | 3216450755 |
      8485 | 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 3028825809 |
     53823 | 33787285   | RubÚn            | Ramos Chamorro     | 3244273375 |
    107991 | 273193028  | Erika            | RÝos Sußrez        | 3235535099 |
     66985 | 1090968710 | Ruth             | RodrÝguez PÚrez    | 3021808053 |
     23558 | 548464915  | Yuliana          | RodrÝguez Vargas   | 3173571208 |
     60407 | 446019320  | Fernando         | Rojas Cßrdenas     | 3235672830 |
      7898 | 24999630   | Esperanza        | Romero Betancur    | 3029623613 |
     20979 | 940051048  | David Germßn     | Romero Bonilla     | 3018117176 |
     37008 | 922724022  | Esteban          | Salazar Parra      | 3162718294 |
    120306 | 1079700992 | Camila           | Sßnchez Pinz¾n     | 3053337474 |
    130458 | 610678466  | Nicolßs          | Sßnchez RodrÝguez  | 3114761362 |
    126597 | 938685616  | Sandra           | Sandoval Ortega    | 3026392429 |
     95048 | 449792023  | Myriam           | Sandoval Osorio    | 3016344667 |
    132102 | 403413565  | Reinaldo         | Sußrez PolanÝa     | 3128378640 |
     36775 | 712500733  | Esperanza        | Valencia Ortiz     | 3111830019 |
    118364 | 796884051  | Yuliana          | Zapata Parra       | 3172431642 |
(65 filas)

*/