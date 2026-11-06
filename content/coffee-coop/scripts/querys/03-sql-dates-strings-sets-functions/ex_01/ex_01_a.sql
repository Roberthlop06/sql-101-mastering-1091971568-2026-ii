-- Exercise 01 - a
-- Farmers of Pamplona (54518) and their membership antiquity in days as of today
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC;

/*
  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julißn Guillermo  | Valencia Narvßez   | 1995-01-27      |           11605
 361839624  | RocÝo Alba        | Ortega Serrano     | 1995-07-10      |           11441
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11423
 939635303  | Marleny           | ┴lvarez Correa     | 1996-03-20      |           11187
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11062
 1012324420 | Martha Carolina   | PÚrez Jaimes       | 1996-11-22      |           10940
 230971064  | Manuel            | Agudelo JimÚnez    | 1997-03-29      |           10813
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10803
 677772599  | Guillermo         | PÚrez PÚrez        | 1997-05-17      |           10764
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10707
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | 1997-07-21      |           10699
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | 1998-03-24      |           10453
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10450
 914235490  | Ëscar             | Ospina Gonzßlez    | 1998-05-02      |           10414
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10326
 142439635  | Yeison            | Medina Londo±o     | 1998-09-29      |           10264
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10229
 446019320  | Fernando          | Rojas Cßrdenas     | 1998-12-16      |           10186
 33787285   | RubÚn             | Ramos Chamorro     | 1999-03-02      |           10110
 866702579  | ┴lvaro            | Berm·dez MarÝn     | 1999-06-21      |            9999
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      |            9914
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9807
 14046794   | Alberto           | ┴lvarez Villamizar | 2000-04-14      |            9701
 1185360305 | Ivßn              | Berm·dez Fl¾rez    | 2000-09-03      |            9559
 1145130870 | Elsa              | MarÝn Henao        | 2001-03-17      |            9364
 622024549  | Viviana           | Gonzßlez Molina    | 2001-04-18      |            9332
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      |            9237
 1103932523 | Amparo            | Bastidas Chamorro  | 2001-08-01      |            9227
 712500733  | Esperanza         | Valencia Ortiz     | 2001-08-12      |            9216
 302059113  | Yuliana           | Sandoval Bedoya    | 2001-09-24      |            9173
 279649109  | Carlos            | Castillo Torres    | 2001-10-14      |            9153
 951995464  | Wilson Yeison     | DÝaz RamÝrez       | 2001-12-19      |            9087
 934117740  | Gustavo           | MarÝn Sandoval     | 2002-04-29      |            8956
 44817013   | AnÝbal            | Silva Villamizar   | 2002-05-19      |            8936
 358946393  | Carmen            | Cßrdenas Moreno    | 2002-06-25      |            8899
 1079700992 | Camila            | Sßnchez Pinz¾n     | 2002-07-01      |            8893
 403413565  | Reinaldo          | Sußrez PolanÝa     | 2002-07-31      |            8863
 968133883  | Sandra            | Ortega GarcÝa      | 2002-08-11      |            8852
 940051048  | David Germßn      | Romero Bonilla     | 2002-10-11      |            8791
 409306735  | M¾nica Claudia    | Fl¾rez Gonzßlez    | 2002-10-28      |            8774
 699387247  | Fanny             | Montoya Valencia   | 2003-04-01      |            8619
 1135293825 | Abelardo          | PÚrez Castro       | 2003-06-19      |            8540
 478755763  | Nicolßs           | Rivera Duque       | 2003-08-11      |            8487
 1177165427 | Juliana           | Ortega Osorio      | 2003-09-04      |            8463
 788902052  | Camilo Ivßn       | Calder¾n Trujillo  | 2003-12-14      |            8362
 436957556  | JazmÝn            | Burbano Jaimes     | 2003-12-19      |            8357
-- Más  --

*/