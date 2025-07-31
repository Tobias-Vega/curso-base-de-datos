-- MySQL
CREATE DATABASE nombre_de_base_de_datos;

USE nombre_de_base_de_datos;

-- con opciones
CREATE DATABASE nombre_de_base_de_datos
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- POSTGRESQL
CREATE DATABASE nombre_de_base_de_datos;

-- No se especifica el uso de la base de datos, sino al conectarse a ella

-- con opciones adicionales
CREATE DATABASE nombre_de_base_de_datos
  WITH OWNER = nombre_usuario
  ENCODING = 'UTF8'
  LC_COLLATE = 'es_AR.UTF-8'
  LC_CTPYE = 'es_AR.UTF-8'
  TEMPLATE = template0

-- SQL Server
CREATE DATABASE nombre_de_base_de_datos;

USE nombre_de_base_de_datos;

-- con opciones adicionales
CREATE DATABASE nombre_de_base_de_datos
ON PRIMARY
(
  NAME = nombre_de_base_de_datos,
  FILENAME = 'C:\ruta\al\archivo\nombre_de_base_de_datos.mdf',
  SIZE = 10MB,
  MAXSIZE = 100MB,
  FILEGROWTH = 5MB
)
LOG ON (
  NAME = nombre_logico_archivo,
  FILENAME = 'C:\ruta\al\archivo\nombre_de_base_de_datos_log.ldf',
  SIZE = 5MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 1MB
)