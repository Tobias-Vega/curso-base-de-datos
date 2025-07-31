-- MySQL
DROP DATABASE nombre_de_base_de_datos;

-- Para evitar errores si la base de datos ya existe
DROP DATABASE IF EXISTS nombre_de_base_de_datos;

-- POSTGRESQL
DROP DATABASE nombre_de_base_de_datos;
-- Para evitar errores si la base de datos ya existe
DROP DATABASE IF EXISTS nombre_de_base_de_datos;

-- SQL Server
DROP DATABASE nombre_de_base_de_datos;

-- Para eliminar múltiples bases de datos a la vez
DROP DATABASE base1, base2, base3;

-- Si hay conexiones activas, el comando fallará. Para forzar la eliminación, se puede usar:
ALTER DATABASE nombre_de_base_de_datos SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE nombre_de_base_de_datos;