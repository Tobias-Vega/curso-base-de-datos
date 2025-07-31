-- renombrar tabla
ALTER TABLE usuarios RENAME users;

-- Agregar columna

ALTER TABLE nombre_tabla
ADD nueva_columna tipo_dato;

-- Eliminar columna
ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;

-- Modificar tipo de dato o definición de una columna

-- MySQL
ALTER TABLE nombre_tabla
MODIFY salario DECIMAL(12, 2);

-- PostgreSQL
ALTER TABLE nombre_tabla
ALTER COLUMN salario TYPE DECIMAL(12, 2);

-- SQL Server
ALTER TABLE nombre_tabla
ALTER COLUMN salario DECIMAL(12, 2);

-- Agregar restricción

-- Clave primaria
ALTER TABLE nombre_tabla
ADD PRIMARY KEY (id);

-- Clave foránea
ALTER TABLE nombre_tabla
ADD CONSTRAINT fk_departamento
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

-- restricción UNIQUE
ALTER TABLE nombre_tabla
ADD CONSTRAINT unique_dni UNIQUE (dni);

-- restriccion NOT NULL
ALTER TABLE nombre_tabla
ADD CONSTRAINT not_null_nombre NOT NULL (nombre);


-- eliminar restricción
-- MySQL
ALTER TABLE nombre_tabla
DROP INDEX unique_dni;

-- PostgreSQL
ALTER TABLE nombre_tabla
DROP CONSTRAINT fk_departamento;

-- SQL Server
ALTER TABLE nombre_tabla
DROP CONSTRAINT fk_departamento;

-- Ejemplo combinado
ALTER TABLE empleados
ADD email VARCHAR(100),
MODIFY salario DECIMAL(10,2)
DROP COLUMN telefono,
ADD CONSTRAINT chk_edad CHECK (edad >= 18);