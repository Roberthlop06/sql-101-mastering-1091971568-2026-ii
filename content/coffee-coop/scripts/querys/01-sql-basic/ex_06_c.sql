-- Exercise 06
-- c) Inactive farmers of Pamplona ordered by affiliation date from oldest to newest
SELECT
    T1.farmer_id AS farmer_id,
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    T1.is_active AS is_active
FROM farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.is_active = FALSE
ORDER BY
    T1.membership_date ASC;

/*
 farmer_id |  document  |    first_name    |     last_name      | membership_date | is_active
-----------+------------+------------------+--------------------+-----------------+-----------
     99920 | 230971064  | Manuel           | Agudelo JimÚnez    | 1997-03-29      | f
    111416 | 534023693  | Myriam           | Valencia Moreno    | 1998-11-03      | f
     53823 | 33787285   | RubÚn            | Ramos Chamorro     | 1999-03-02      | f
     42933 | 1135293825 | Abelardo         | PÚrez Castro       | 2003-06-19      | f
     94576 | 478755763  | Nicolßs          | Rivera Duque       | 2003-08-11      | f
    111147 | 160538872  | Liliana          | Mosquera Uribe     | 2007-09-27      | f
     22657 | 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 2009-05-02      | f
     25949 | 10424994   | Cristian         | Herrera Zuluaga    | 2010-04-28      | f
    113393 | 1015411133 | Santiago         | Berm·dez Ruiz      | 2010-11-30      | f
     66985 | 1090968710 | Ruth             | RodrÝguez PÚrez    | 2010-12-11      | f
     11941 | 974842644  | Arturo           | Hernßndez Uribe    | 2012-06-16      | f
     24741 | 1001030458 | Liliana Luisa    | Chamorro VÚlez     | 2013-01-09      | f
      2501 | 870240973  | Jairo            | Molina Pab¾n       | 2014-03-13      | f
    142458 | 89157555   | Heriberto        | JimÚnez Cßceres    | 2014-07-17      | f
     18100 | 333176982  | Edilma           | Rivera Rivera      | 2014-12-20      | f
     31529 | 587550249  | Gustavo          | Mosquera L¾pez     | 2016-05-14      | f
    134817 | 718906996  | Nelson           | Bedoya VÚlez       | 2016-12-09      | f
     14977 | 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 2017-01-11      | f
     52384 | 599185252  | EfraÝn           | Pinz¾n Cabrera     | 2017-07-23      | f
    138719 | 135734682  | Diego            | Rivera JimÚnez     | 2018-03-26      | f
      8485 | 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 2021-02-24      | f
(21 filas)

*/