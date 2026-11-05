/*
Exercise 04 - a
Municipalities and departments using NATURAL JOIN
*/
SELECT
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM geo.municipalities AS T1
NATURAL JOIN geo.departments AS T2
ORDER BY T2.department_name ASC, T1.municipality_name ASC;

/*
        municipality         |                        department
-----------------------------+----------------------------------------------------------
 Leticia                     | Amazonas
 Puerto Nari├▒o               | Amazonas
 Abejorral                   | Antioquia
 Abriaqu├¡                    | Antioquia
 Alejandr├¡a                  | Antioquia
 Amag├í                       | Antioquia
 Amalfi                      | Antioquia
 Andes                       | Antioquia
 Angel├│polis                 | Antioquia
 Angostura                   | Antioquia
 Anor├¡                       | Antioquia
 Anz├í                        | Antioquia
 Apartad├│                    | Antioquia
 Arboletes                   | Antioquia
 Argelia                     | Antioquia
 Armenia                     | Antioquia
 Barbosa                     | Antioquia
 Bello                       | Antioquia
 Belmira                     | Antioquia
 Betania                     | Antioquia
 Betulia                     | Antioquia
 Brice├▒o                     | Antioquia
 Buritic├í                    | Antioquia
 C├íceres                     | Antioquia
 Caicedo                     | Antioquia
 Caldas                      | Antioquia
 Campamento                  | Antioquia
 Ca├▒asgordas                 | Antioquia
 Caracol├¡                    | Antioquia
 Caramanta                   | Antioquia
 Carepa                      | Antioquia
 Carolina                    | Antioquia
 Caucasia                    | Antioquia
 Chigorod├│                   | Antioquia
 Cisneros                    | Antioquia
 Ciudad Bol├¡var              | Antioquia
 Cocorn├í                     | Antioquia
 Concepci├│n                  | Antioquia
 Concordia                   | Antioquia
 Copacabana                  | Antioquia
 Dabeiba                     | Antioquia
 Donmat├¡as                   | Antioquia
 Eb├®jico                     | Antioquia
 El Bagre                    | Antioquia
 El Carmen De Viboral        | Antioquia
 El Santuario                | Antioquia
-- Más  --

*/