-- INNER JOIN

SELECT columna1, columna2
FROM tabla_principal
INNER JOIN otra_tabla
ON tabla_principal.columna_relacionada = otra_tabla.columna_relacionada;

-- LEFT JOIN o LEFT OUTER JOIN
SELECT columna1, columna2
FROM tabla_principal
LEFT JOIN otra_tabla
ON tabla_principal.columna_relacionada = otra_tabla.columna_relacionada;

-- RIGHT JOIN o RIGHT OUTER JOIN
SELECT columna1, columna2
FROM tabla_principal
RIGHT JOIN otra_tabla
ON tabla_principal.columna_relacionada = otra_tabla.columna_relacionada;

-- CROSS JOIN
SELECT columna1, columna2
FROM tabla_principal
CROSS JOIN otra_tabla;