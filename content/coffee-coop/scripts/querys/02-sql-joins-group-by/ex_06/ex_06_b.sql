/*
Exercise 06 - b
Pairs of farmers in municipality 54518 with the same last name
*/
SELECT
    T1.last_name AS last_name,
    T1.first_name AS farmer_a,
    T2.first_name AS farmer_b
FROM farm.farmers AS T1
INNER JOIN farm.farmers AS T2
    ON T1.last_name = T2.last_name
    AND T1.farmer_id < T2.farmer_id
WHERE T1.municipality_code = '54518'
    AND T2.municipality_code = '54518';

/*
     last_name      |    farmer_a    | farmer_b
--------------------+----------------+----------
 Valencia Moreno    | Teresa Adriana | Myriam
 Mej├¡a Vera         | Nelson Samuel  | Elsa
 D├¡az Cu├®llar       | In├®s Luc├¡a     | Fabio
 Fl├│rez Gonz├ílez    | M├│nica Claudia | Myriam
 Bastidas Rodr├¡guez | Alberto        | Antonio
(5 filas)


*/