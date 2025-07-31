-- listar tablas

-- MySQL
SHOW TABLES;

-- POSTGRESQL
\dt
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

-- SQL Server
SELECT table_name FROM sys.tables;

-- Eliminar tablas

-- MySQL, POSTGRESQL y SQL Server
DROP TABLE nombre_tabla;
-- Para evitar errores si la tabla no existe
DROP TABLE IF EXISTS nombre_tabla;