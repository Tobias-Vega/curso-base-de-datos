SELECT columna FROM tabla
WHERE columna IN (
    SELECT subcolumna FROM subtabla
    WHERE condicion = 'valor'
);

-- Tipos de subconsultas:
-- 1. Subconsulta escalar: devuelve un único valor.

SELECT nombre FROM empleados
WHERE salario > (
    SELECT AVG(salario) FROM empleados
);

-- 2. Subconsulta de fila: devuelve una fila y varias columnas.
SELECT * FROM empleados
WHERE (departamento_id, salario) =
    (SELECT departamento_id, MAX(salario)
    FROM empleados
    GROUP BY departamento_id
    LIMIT 1);

-- 3. Subconsulta de tabla: devuelve varias filas y columnas.
SELECT nombre FROM empleados
WHERE departamento_id IN (
    SELECT departamento_id FROM departamentos
    WHERE ubicacion = 'Madrid'
);