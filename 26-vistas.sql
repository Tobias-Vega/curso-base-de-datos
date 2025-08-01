CREATE VIEW nombre_vista AS
SELECT columna1, columna2
FROM tabla_principal
WHERE condicion;

-- ejemplo
CREATE OR REPLACE VIEW vista_clientes_vw AS
SELECT id, nombre, email
FROM clientes
WHERE estado = 'activo';

-- consulta a la vista
SELECT * FROM vista_clientes_vw;

-- eliminar una vista
DROP VIEW vista_clientes_vw;

-- vistas con JOINS
CREATE OR REPLACE VIEW vista_ordenes_completas_vw AS
SELECT c.nombre, o.producto
FROM clientes c
JOIN ordenes o ON c.id = o.cliente_id;