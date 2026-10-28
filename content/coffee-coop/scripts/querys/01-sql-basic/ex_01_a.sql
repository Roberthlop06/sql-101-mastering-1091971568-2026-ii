-- Exercise 01
-- a
SELECT 
    * 
FROM geo.departments;
/*
department_code |                     department_name
-----------------+----------------------------------------------------------
 05              | Antioquia
 08              | Atlßntico
 11              | Bogotß, D.C.
 13              | BolÝvar
 15              | Boyacß
 17              | Caldas
 18              | Caquetß
 19              | Cauca
 20              | Cesar
 23              | C¾rdoba
 25              | Cundinamarca
 27              | Choc¾
 41              | Huila
 44              | La Guajira
 47              | Magdalena
 50              | Meta
 52              | Nari±o
 54              | Norte De Santander
 63              | Quindio
 66              | Risaralda
 68              | Santander
 70              | Sucre
 73              | Tolima
 76              | Valle Del Cauca
 81              | Arauca
 85              | Casanare
 86              | Putumayo
 88              | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 91              | Amazonas
 94              | GuainÝa
 95              | Guaviare
 97              | VaupÚs
 99              | Vichada
(33 filas)
*/

--b
SELECT 
    department_code AS code,
    department_name AS department
FROM geo.departments;
/*
code |                        department
------+----------------------------------------------------------
 05   | Antioquia
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 19   | Cauca
 20   | Cesar
 23   | C¾rdoba
 25   | Cundinamarca
 27   | Choc¾
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 81   | Arauca
 85   | Casanare
 86   | Putumayo
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 91   | Amazonas
 94   | GuainÝa
 95   | Guaviare
 97   | VaupÚs
 99   | Vichada
(33 filas)
*/

--c
SELECT
    department_code AS code,
    department_name AS department
FROM geo.departments
ORDER BY department_name;
/*
 code |                        department
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 85   | Casanare
 19   | Cauca
 20   | Cesar
 27   | Choc¾
 23   | C¾rdoba
 25   | Cundinamarca
 94   | GuainÝa
 95   | Guaviare
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 86   | Putumayo
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 97   | VaupÚs
 99   | Vichada
(33 filas)
*/