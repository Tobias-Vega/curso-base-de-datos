-- Consulta general

SELECT * FROM nombre_tabla;

-- consultas especificas
SELECT columna1, columna2 FROM nombre_tabla

-- consultas con filtros
SELECT * FROM nombre_tabla WHERE (condicion);

-- consultas con condiciones compuestas

SELECT * FROM nombre_tabla WHERE (condicion1) AND (condicion2);
SELECT * FROM nombre_tabla WHERE (condicion1) OR (condicion2);
SELECT * FROM nombre_tabla WHERE NOT (condicion);
SELECT * FROM nombre_tabla WHERE (condicion1) AND (condicion2) OR (condicion3);

-- consultas con nulos
SELECT * FROM nombre_tabla WHERE columna IS NULL;
SELECT * FROM nombre_tabla WHERE columna IS NOT NULL;

-- consultas con rangos
SELECT * FROM nombre_tabla WHERE columna BETWEEN valor1 AND valor2;
SELECT * FROM nombre_tabla WHERE columna IN (valor1, valor2, valor3);

-- consultas con registros unicos
SELECT DISTINCT columna FROM nombre_tabla;

-- consultas con alias
SELECT columna AS alias_columna FROM nombre_tabla;