-- MySQL
DESC nombre_tabla;
-- o
SHOW COLUMNS FROM nombre_tabla;

-- POSTGRESQL
\d nombre_tabla
-- o
SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'nombre_tabla';

-- SQL Server
-- Ver columnas con tipos, nulabilidad, etc.
EXEC sp_columns nombre_tabla;

-- Ver estructura completa
EXEC sp_help nombre_tabla;

-- Solo nombres de columnas
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'nombre_tabla';