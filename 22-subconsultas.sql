SELECT columna FROM tabla
WHERE columna IN (
    SELECT subcolumna FROM subtabla
    WHERE condicion = 'valor'
);