-- Ejercios Libros
-- Obtener todos los libros escritos por autores que cuenten con un seudónimo.

SELECT * FROM libros WHERE autor_id IN (SELECT autor_id FROM autores WHERE seudonimo IS NOT NULL);

-- Obtener el título de todos los libros publicados en el año actual cuyos autores poseen un pseudónimo.

SELECT titulo FROM libros WHERE YEAR(NOW()) = YEAR(fecha_publicacion) AND autor_id IN (SELECT autor_id FROM autores WHERE seudonimo IS NOT NULL);

-- Obtener todos los libros escritos por autores que cuenten con un seudónimo y que hayan nacido ante de 1965.

SELECT * FROM libros WHERE autor_id IN (SELECT autor_id FROM autores WHERE seudonimo IS NOT NULL AND fecha_nacimiento < '1965-01-01');

-- Colocar el mensaje no disponible a la columna descripción, en todos los libros publicados antes del año 2000.

UPDATE libros SET descripcion = 'No disponible' WHERE fecha_publicacion < '2000-01-01';

