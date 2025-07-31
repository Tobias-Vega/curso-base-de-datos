SELECT columnas FROM tabla WHERE columna LIKE 'patrón';

-- comodín %
SELECT columnas FROM tabla WHERE columna LIKE 'patrón%'; -- Comienza con 'patrón'
SELECT columnas FROM tabla WHERE columna LIKE '%patrón'; -- Termina con 'patrón'
SELECT columnas FROM tabla WHERE columna LIKE '%patrón%'; -- Contiene 'patrón'

-- comodín _
SELECT columnas FROM tabla WHERE columna LIKE 'patrón_'; -- Un carácter después de 'patrón'
SELECT columnas FROM tabla WHERE columna LIKE '_patrón'; -- Un carácter antes de 'patrón'
SELECT columnas FROM tabla WHERE columna LIKE '_patrón_'; -- Un carácter antes y después de 'patrón'

-- POSTGRESQL
SELECT columnas FROM tabla WHERE columna ILIKE 'patrón'; -- Insensible a mayúsculas/minúsculas