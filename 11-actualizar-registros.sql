UPDATE nombre_tabla
SET columna1 = valor1, columna2 = valor2
WHERE condicion;
-- Utilizar WHERE para especificar qué registros actualizar, de lo contrario se actualizarán todos los registros de la tabla.

-- Actualizar registros con condiciones compuestas
UPDATE nombre_tabla
SET columna1 = valor1, columna2 = valor2
WHERE (condicion1) AND (condicion2);
