-- funciones de agregación

-- COUNT: contar registros
SELECT COUNT(*) FROM tabla; -- Cuenta todos los registros
SELECT COUNT(columna) FROM tabla; -- Cuenta registros no nulos en una columna

-- SUM: sumar valores
SELECT SUM(columna) FROM tabla; -- Suma los valores de una columna

-- AVG: promedio de valores
SELECT AVG(columna) FROM tabla; -- Calcula el promedio de una columna

-- MAX: valor máximo
SELECT MAX(columna) FROM tabla; -- Obtiene el valor máximo de una columna

-- MIN: valor mínimo
SELECT MIN(columna) FROM tabla; -- Obtiene el valor mínimo de una columna

-- GROUP BY: agrupar registros
SELECT columna, COUNT(*) FROM tabla GROUP BY columna; -- Agrupa por una columna y cuenta

-- HAVING: filtrar grupos agregados
SELECT columna, funcion_agregada
FROM tabla
GROUP BY columna
HAVING condicion;