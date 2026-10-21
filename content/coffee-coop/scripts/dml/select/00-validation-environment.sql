-- 1. Validar la cantidad de tablas por esquema (debe mostrar buy: 4, farm: 7, geo: 2, pay: 2)
SELECT table_schema, count(*) AS total_tables
FROM information_schema.tables
WHERE table_schema IN ('geo', 'farm', 'buy', 'pay')
GROUP BY table_schema
ORDER BY table_schema;

-- 2. Validar la cantidad y tipos de restricciones creadas (Primary Keys, Foreign Keys, Unique, Check)
SELECT constraint_type, count(*) AS total_constraints
FROM information_schema.table_constraints
WHERE table_schema IN ('geo', 'farm', 'buy', 'pay')
GROUP BY constraint_type;