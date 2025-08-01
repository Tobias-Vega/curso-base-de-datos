SELECT columna1, columna2
FROM tabla_principal
WHERE EXISTS (
  SELECT 1
  FROM otra_tabla
  WHERE condición_relacionada
);
