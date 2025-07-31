DELETE FROM nombre_tabla
WHERE condicion;
-- Utilizar WHERE para especificar qué registros eliminar, de lo contrario se eliminarán todos los registros de la tabla.

-- eliminacion en cascada
CREATE TABLE categorias (
  id INT PRIMARY KEY,
  nombre VARCHAR(100)
);

CREATE TABLE productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE CASCADE
);

-- Limpiar una tabla
TRUNCATE TABLE nombre_tabla;