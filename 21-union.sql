SELECT columna1, columna2 FROM tabla1
UNION
SELECT columna1, columna2 FROM tabla2;

-- incluir duplicados
SELECT columna1, columna2 FROM tabla1
UNION ALL
SELECT columna1, columna2 FROM tabla2;
